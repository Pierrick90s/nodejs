const express = require ('express');
const fs = require ('fs');

const jsonfile = require ('jsonfile');
const port = 3030 ;
const app = express();

app.use(express.urlencoded({ extended: false }));
app.use(express.json())
app.use(express.static('public'))

app.set('views',__dirname + '/view');
app.set('view engine', 'ejs');

app.get('/', (req,res) => res.send ('Bienvenue'))

app.get('/affiche', (req,res) => {
    res.render('affiche', { titre: "HELLO WORLD !!!" })
})

app.get('/saisie', (req,res)=>{
    res.render('saisie', { titre : "Saisie !!" })
})

app.post('/send', (req,res) => {
    console.log(req.body)
    res.send(req.body.nom)
})

app.get ('/tweets/:param1/:param2',function(req,res){
    res.render("result", {val1: req.params.param1, val2: req.params.param2})
})

app.get("/monjson/:nomdufic", (req, res) => {
    jsonfile.readFile('model/'+ req.params.nomdufic + ".json",(err,data) => {
    console.log(typeof data, data);
    res.send('ok');
  });
  
})

app.listen(port);