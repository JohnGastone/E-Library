const require = require('express');
const mongoose = require('mongoose');
const bodyParser = require('body-parser');
const bcrypt = require('bcryptjs');

const app = express();
const port = 3000;


app.use(bodyParser.json());

const mongoURI = 'mongodb://localhost:3000/mydatabase';

mongoose.connect(mongoURI, { useNewUrlParser: true, useUnifiedTopology: true })
    .then(() => console.log('MongoDB connected successfully'))
    .catch(err => console.log(err));



const ItemSchema = new mongoose.Schema({
    email: String,
    password: String,
});


const Item = mongoose.model('Item', ItemSchema);

app.get('/items', async (req, res) => {
    const items = await Item.find();
    res.json(items);
});

app.post('/items', async (req, res) => { 
    const newItem = new ItemSchema(req.body);
    await newItem.save();
    res.json(newItem);
})

app.listen(port, () => console.log('Server running on port ${port}'));