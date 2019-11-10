const {Schema, model } = require('mongoose');

const filmSchema = new Schema({
    name : String,
    date : Date,
    duree : String,
    lieu : String,
    nbreplace : Number
});

module.exports = model('film', filmSchema);