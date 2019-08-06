// Imports 
const express = require("express");
const morgan = require("morgan");
const bodyParser = require('body-parser')
// Getting all routes
const routes = require("./routes/get_data")
const cors = require('cors')



// Instantiate server
const app = express();

// Middlewares
app.use(morgan("dev"));
app.use(cors());

// Body Parser configuration
app.use(bodyParser.json({limit: '10mb', extended: true}))
app.use(bodyParser.urlencoded({limit: '10mb', extended: true}))

// Routes
app.use("/lifeaz", routes)

app.get('/', (req, res) => {
    res.send('Ok je suis dans /');
});

module.exports = app;