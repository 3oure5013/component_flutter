const mongoose = require('mongoose');

async function connect() {
   await mongoose.connect('mongodb://localhost:27017/flutter-node',
    {
        useNewUrlParser: true
    });
    console.log('Database :  connected');
}
 
module.exports = { connect };