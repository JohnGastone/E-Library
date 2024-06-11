// server.js
const express = require('express');
const mongoose = require('mongoose');
const bodyParser = require('body-parser');
const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');

const app = express();
const port = 3000;

app.use(bodyParser.json());

// Replace with your MongoDB connection string
const mongoURI = 'mongodb://localhost:27017/mydatabase';

mongoose.connect(mongoURI, { useNewUrlParser: true, useUnifiedTopology: true })
  .then(() => console.log('MongoDB connected'))
  .catch(err => console.log('Error connecting to MongoDB'));

// Define User Schema
const UserSchema = new mongoose.Schema({
  name: { type: String, required: true },
  email: { type: String, required: true, unique: true },
  password: { type: String, required: true },
  role: { type: String, enum: ['admin', 'user'], default: 'user' },
});

UserSchema.pre('save', async function (next) {
  if (!this.isModified('password')) return next();
  this.password = await bcrypt.hash(this.password, 10);
  next();
});

const User = mongoose.model('User', UserSchema);

// Define Resource Schema
const ResourceSchema = new mongoose.Schema({
  title: { type: String, required: true },
  type: { type: String, enum: ['pdf', 'word', 'ppt', 'jpg', 'png', 'mp4'], required: true },
  url: { type: String, required: true },
  uploadedAt: { type: Date, default: Date.now },
  uploadedBy: { type: mongoose.Schema.Types.ObjectId, ref: 'User' }
});

const Resource = mongoose.model('Resource', ResourceSchema);

// API Endpoints for User Management
app.post('/register', async (req, res) => {
  try {
    const { name, email, password } = req.body;
    const user = new User({ name, email, password });
    await user.save();
    res.status(201).json({ message: 'User registered successfully' });
  } catch (err) {
    res.status(400).json({ error: err.message });
  }
});

app.post('/login', async (req, res) => {
  try {
    const { email, password } = req.body;
    const user = await User.findOne({ email });
    if (!user) return res.status(400).json({ message: 'User not found' });

    const isMatch = await bcrypt.compare(password, user.password);
    if (!isMatch) return res.status(400).json({ message: 'Invalid credentials' });

    const token = jwt.sign({ id: user._id, role: user.role }, 'secretKey', { expiresIn: '1h' });
    res.json({ token });
  } catch (err) {
    res.status(400).json({ error: err.message });
  }
});

// API Endpoints for Resource Management
app.get('/resources', async (req, res) => {
  const resources = await Resource.find().populate('uploadedBy', 'name email');
  res.json(resources);
});

app.post('/resources', async (req, res) => {
  try {
    const { title, type, url, uploadedBy } = req.body;
    const resource = new Resource({ title, type, url, uploadedBy });
    await resource.save();
    res.status(201).json(resource);
  } catch (err) {
    res.status(400).json({ error: err.message });
  }
});

app.listen(port, () => console.log(`Server running on port ${port}`));
