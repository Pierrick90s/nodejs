const http = require("http");
// http est une reference sur l'objet de node

const server = http.createServer(function (req, res) {
  console.log("requete");
  res.statusCode = 200;
  res.setHeader("Content-Type", "text/plain");
  res.end("Hello World");
});

server.listen(3030, function () {
  console.log("server listening on 3030");
});