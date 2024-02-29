//-----
const express = require ('express')

const app = express()

app.get('/', function(req,res){
    res.send('Welcome to node AFPA')
})

app.listen(8000)
//------