const express = require("express")
const connection = require('../connection/db')

// Router
const router = express.Router();

router.get("/temoignages", (req, res) => {
    connection.query('SELECT * FROM temoignages ORDER BY date DESC', (err, results) => {
      if (err) 
        // Si une erreur est survenue, alors on informe l'utilisateur de l'erreur
        throw res.status(500).send('Erreur lors de la récupération des employés');
       // Si tout s'est bien passé, on envoie le résultat de la requête SQL en tant que JSON.
       return res.status(200).json(results);
       
      })
  })

module.exports = router;