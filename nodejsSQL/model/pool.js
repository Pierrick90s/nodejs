const connect = require('./mysqlconfig.js')

exports.getActeur = function(idacteur,cb){
    connect.query('SELECT * FROM acteurs where id_acteurs =' + idacteur,
    function(err, result) {
        cb(...result); // cb est un fonction de callback encoyé en paramètre à partir de app.js
    })

}

exports.getAllActeurs = function (cb) {
  connect.query(
    "SELECT * FROM acteurs",
    function (err, result) {
      cb(result); // cb est un fonction de callback encoyé en paramètre à partir de app.js
    });
};

exports.addActeur = function (post) {
  connect.query(
    "INSERT INTO acteurs (`anom`, `aprenom`, `aphoto`) VALUES (?,?,?);",
    [post.anom,post.aprenom,post.aphoto], 
    function (err, result,) {
    console.log(err);
  });
};

exports.modifActeur = function (post) {
  connect.query(
    "UPDATE acteurs SET aprenom = ?,anom = ?,aphoto = ? WHERE id_acteurs = ?",
    [post.aprenom,post.anom,post.aphoto,post.id_acteurs], 
    function (err, result,) {
    console.log(err);
  });
};

exports.supprActeur = function (post) {
  connect.query(
    "DELETE FROM acteurs WHERE id_acteurs = ?",
    [post.id_acteurs],
    function (err, result) {
      console.log(err);
    }
  );
};

 exports.getReal = function(idreal,cb){
    connect.query('SELECT * FROM reals where id_reals =' + idreal,
    function(err, result) {
        cb(...result); // cb est un fonction de callback encoyé en paramètre à partir de app.js
    });
};

exports.getAllReals = function (cb) {
  connect.query("SELECT * FROM reals", function (err, result) {
    cb(result); // cb est un fonction de callback encoyé en paramètre à partir de app.js
  });
};

exports.addReal = function (post) {
  connect.query(
    "INSERT INTO reals (`rnom`, `rprenom`, `rphoto`) VALUES (?,?,?);",
    [post.rnom, post.rprenom, post.rphoto],
    function (err, result) {
      console.log(err);
    }
  );
};

exports.modifActeur = function (post) {
  connect.query(
    "UPDATE acteurs SET aprenom = ?,anom = ?,aphoto = ? WHERE id_acteurs = ?",
    [post.aprenom, post.anom, post.aphoto, post.id_acteurs],
    function (err, result) {
      console.log(err);
    }
  );
};

exports.supprActeur = function (post) {
  connect.query(
    "DELETE FROM acteurs WHERE id_acteurs = ?",
    [post.id_acteurs],
    function (err, result) {
      console.log(err);
    }
  );
};

 exports.getGenre = function(idgenre,cb){
    connect.query('SELECT * FROM genre where id_genre =' + idgenre,
    function(err, result) {
        cb(...result); // cb est un fonction de callback encoyé en paramètre à partir de app.js
    })
}

exports.getAllGenres = function (cb) {
  connect.query("SELECT * FROM genre", function (err, result) {
    cb(result); // cb est un fonction de callback encoyé en paramètre à partir de app.js
  });
};
