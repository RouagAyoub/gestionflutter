const mongoose = require('mongoose');

const test1 = mongoose.Schema({
    name: String,
    surname: String,
})

module.exports = mongoose.model('TEST', test1);