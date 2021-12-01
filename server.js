const path = require('path');
const express = require('express');

const app = express();
const PORT = 3001;

const sequelize = require('./db/connection');

app.get('/',(req,res)=>{
    res.sendFile(path.join(__dirname,'./public/index.html'));
});

app.listen(PORT, ()=>{
    console.log(`App listening on Port ${3001}`)
});