const {Schema, model } = require('mongoose');

const videoSchema = new Schema({
    name : String,
    date : Date,
    duree : String,
    url: String,
});

module.exports = model('Video', videoSchema);