const express = require('express');
const app = express();
const mongoose = require('mongoose');
const port = 3000;
var bodyParser = require('body-parser')
const productRoote = require('./route/product');

/*
mongoose.connect('mongodb+srv://ayoub:ayoub@cluster0.gpp1r.mongodb.net/myFirstDatabase?retryWrites=true&w=majority',
    {
        useNewUrlParser: true,
        useUnifiedTopology: true
    });
    */
const connection = mongoose.connection;
connection.on('connected', () => { console.log("connection") });
connection.on('error', () => { console.log("err") });

app.use([bodyParser.urlencoded({ extended: true }), express.json()])
app.use('/product', productRoote)

app.listen(port, () => {
    console.log("it is working");
});

module.exports = app;