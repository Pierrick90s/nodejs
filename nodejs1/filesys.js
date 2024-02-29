// module fs (filesystem)
const filesystem = require("fs");

//
// lecture d'un fichier data.txt en mode ASYNCHRONE.
//
const data = filesystem.readFile("data.txt", function (err, data) {
  console.log(data.toString());
});

//
// lecture d'un fichier data.txt en mode SYNCHRONE.
//
const data2 = filesystem.readFileSync("data.txt")
console.log(data2.toString())
