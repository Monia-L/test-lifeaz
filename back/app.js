// Imports 
const express = require("express");
const morgan = require("morgan");
const bodyParser = require('body-parser')
const cors = require('cors')
// Getting all routes
const routes = require("./routes/get_data")

// Instantiate server
const app = express();

// Middlewares
app.use(morgan("dev"));
app.use(cors());

// Body Parser configuration
app.use(bodyParser.json({limit: '10mb', extended: true}))
app.use(bodyParser.urlencoded({limit: '10mb', extended: true}))

// Routes
app.use("/temoignages", (req, res, next) =>{
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "X-Requested-With, Content-Type, Origin, Authorization, Accept, Client-Security-Token, Accept-Encoding")
    res.header("Access-Control-Allow-Methods", "POST, GET, OPTIONS, DELETE, PUT")
    res.header("Access-Control-Max-Age", "1000")
  
    next();
 }, routes)

// app.get('/', (req, res,) => {
//     res.header("Access-Control-Allow-Origin", "*");
//     res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
//     res.send('Ok je suis dans /temoignages');
// });

module.exports = app;