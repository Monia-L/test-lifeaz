// Imports 
const express = require("express");
const morgan = require("morgan");
const bodyParser = require('body-parser')
const cors = require('cors')
// Getting all routes
//const routes = require("./routes/get_data")
const connection = require('./connection/db')

// Instantiate server
const app = express();

// Middlewares
app.use(morgan("dev"));
app.use(cors());

// Body Parser configuration
app.use(bodyParser.json({ limit: '10mb', extended: true }))
app.use(bodyParser.urlencoded({ limit: '10mb', extended: true }))

// Routes
// app.use("/", (req, res, next) =>{
//     res.header("Access-Control-Allow-Origin", "*");
//     res.header("Access-Control-Allow-Headers", "X-Requested-With, Content-Type, Origin, Authorization, Accept, Client-Security-Token, Accept-Encoding");
//     res.header("Access-Control-Allow-Methods", "POST, GET, OPTIONS, DELETE, PUT");
//     res.header("Access-Control-Max-Age", "1000")

//     next();
//  }, routes)

app.get('/', (req, res, ) => {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "X-Requested-With, Content-Type, Origin, Authorization, Accept, Client-Security-Token, Accept-Encoding");
    res.header("Access-Control-Allow-Methods", "POST, GET, OPTIONS, DELETE, PUT");
    res.header("Access-Control-Max-Age", "1000")
    connection.query('SELECT * FROM temoignages ORDER BY date DESC', (err, results) => {
        if (err)
            // Si une erreur est survenue, alors on informe l'utilisateur de l'erreur
            throw res.status(500).send('Erreur lors de la récupération des employés');
        // Si tout s'est bien passé, on envoie le résultat de la requête SQL en tant que JSON.
        return res.status(200).json(results);

    })
});

module.exports = app;