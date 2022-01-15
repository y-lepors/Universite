const mariadb = require('mariadb');
const express = require('express');
const app = express()

// Middleware
app.use(express.json())

var allowCrossDomain = function(req, res, next) {
    res.header('Access-Control-Allow-Origin', "*");
    res.header('Access-Control-Allow-Methods', 'GET,PUT,POST,DELETE');
    res.header('Access-Control-Allow-Headers', 'Content-Type');
    next();
}

app.use(allowCrossDomain);




mariadb.createConnection({
    host: 'obiwan2.univ-brest.fr', 
    user:'zle_porya',
    password: 'x228q3q1',
    database: 'zil3-zle_porya'
    })
    .then(conn => {
        console.log("connected ! connection id is " + conn.threadId);



        app.get('/formation', (req, res) => {

            conn.query("SELECT COUNT(*) FROM FORMATION").then(rows => {
                console.log(rows);
                res.send(rows);
            }) .catch(err => {
                console.log(err);
            });
        })

        app.post('/addDepartement/:id', (req, res) => {

            conn.query("INSERT INTO DEPARTEMENT(idDepartement,nomDepartement) VALUES("+req.params.id+", '"+req.body.Departement+"')").then(rows => {
                console.log(rows);
                res.send(rows);
            }) .catch(err => {
                console.log(err);
            })
        })


        app.get('/effectif', (req,res) => {

            conn.query("SELECT anneeRef ,effectif FROM EFFECTIF, FORMATION WHERE FORMATION.parcours ='"+req.body.parcours+"' AND EFFECTIF.anneeRef >='"+req.body.anneeDebut+"' AND EFFECTIF.anneeRef <='"+req.body.anneeFin+"'")
            .then(rows => {
                console.log(rows);
                res.send(rows);
            }) .catch(err => {
                console.log(err);
            })

        })

        app.get('/listeUFR', (req,res) => {

            conn.query("SELECT DISTINCT nomUFR, idUFR FROM UFR").then(rows => {
                console.log(rows);
                res.send(rows);
            }) .catch(err => {
                console.log(err);
            })
        })

        app.get('/listeParcours', (req,res) => {

            conn.query("SELECT DISTINCT idParcours, nomParcours, nomParcours_Court, DEPARTEMENT_idDepartement FROM PARCOURS, FORMATION WHERE idParcours = PARCOURS_idParcours").then(rows => {
                console.log(rows);
                res.send(rows);
            }) .catch(err => {
                console.log(err);
            })
        })

        app.get('/listeFormation', (req,res) => {

            conn.query("SELECT * FROM FORMATION, PARCOURS WHERE idParcours = PARCOURS_idParcours").then(rows => {
                console.log(rows);
                res.send(rows);
            }) .catch(err => {
                console.log(err);
            })
        })

        app.get('/getFormation/:id', (req,res) => {

            conn.query("SELECT * FROM FORMATION, PARCOURS, EFFECTIF WHERE idFormation = "+req.params.id + " AND idParcours = PARCOURS_idParcours AND FORMATION_idFormation = idFormation").then(rows => {
                console.log(rows);
                res.send(rows);
            }) .catch(err => {
                console.log(err);
            })
        })


        app.get('/departementFilterUFR', (req,res) => {


            conn.query("SELECT DISTINCT * FROM DEPARTEMENT, UFR_has_DEPARTEMENT WHERE DEPARTEMENT_idDEPARTEMENT = idDepartement")
                .then(rows => {
                    console.log(rows);
                    res.send(rows);
                }) .catch(err => {
                    console.log(err);
                })          
        })

        app.get('/demographique' , (req, res) => {
            conn.query("SELECT * FROM DEMOGRAPHIQUE")
            .then(rows => {
                res.send(rows);
            }) .catch(err => {
                console.log(err);
            })
        })


        app.get('/listeFormation', (req, res) => {
            conn.query("SELECT DISTINCT nomDepartement FROM DEPARTEMENT")
            .then(rows => {
                res.send(rows);
            }) .catch(err=> {
                console.log(err);
            })
        })

        app.get('/formationParcours', (req, res) => {
            conn.query("SELECT DISTINCT parcours FROM FORMATION")
            .then(rows=> {
                res.send(rows);
            }) .catch(err => {
                console.log(err);
            })
        })




    })
    .catch(err => {
    console.log("not connected due to error: " + err);
    });


app.listen(7131, ()=> {
    console.log("Server ON");
})