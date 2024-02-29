const express = require('express') // framework web
const mysql = require('mysql2')

const app = express()
const port = 8080

const bdd = require('./model/pool.js')

app.use(express.urlencoded({ extended : false }))
// récupère champ post
app.use(express.json())
// echange de donnees au format json

app.use(express.static("public"));
app.set("views", __dirname + "/view");


app.set('view engine','ejs')


app.get("/acteur/:id", (req, res) => {
  // console.log(post);
    bdd.getActeur(req.params.id, function(row){
        res.render('acteur', {acteur: row})
    }) //
});

app.get("/acteurs", (req, res) => {
  bdd.getAllActeurs(function (rows) {
    res.render("acteurs", { acteurs: rows });
  }); //
});

app.get("/formActeur", (req, res) => {
  res.render("formActeur");
});

app.post("/addActeur", (req, res) => {
  console.log(req.body);
  bdd.addActeur(req.body);
  res.redirect("/acteurs");
});

app.post("/modifActeur", (req, res) => {
  // console.log(res);
  bdd.modifActeur(req.body);
  res.redirect("/acteur/"+req.body.id_acteurs);
});

app.post("/supprActeur", (req, res) => {
  // console.log(res);
  bdd.supprActeur(req.body);
  res.redirect("/acteurs");
});

app.get("/real/:id", (req, res) => {
  bdd.getReal(req.params.id, function (row) {
    res.render("real", { real: row });
  }); //
});

app.get("/reals", (req, res) => {
  bdd.getAllReals(function (rows) {
    res.render("reals", { reals: rows });
  }); //
});

app.get("/genre/:id", (req, res) => {
  bdd.getGenre(req.params.id, function (row) {
    res.render("genre", { genre: row });
  }); //
});

app.get("/genres", (req, res) => {
  bdd.getAllGenres(function (rows) {
    res.render("genres", { genres: rows });
  }); //
});

app.get('/', (req, res) => {
    res.send('Bienvenue')
})

app.listen(port,() => {console.log('listen to port ' +  port)})

