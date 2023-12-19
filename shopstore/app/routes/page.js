var connection = require('../connect');
var express = require('express');
var router = express.Router();

router.get('/login', function (req, res, next) {
  res.render('login');
});

router.get('/contact-us', function (req, res, next) {
  res.render('contact-us');
});

router.get('/service', function (req, res, next) {
  res.render('service');
});

router.get('/home', function (req, res, next) {
  var sql = 'SELECT * FROM products';
  connection.query(sql, (err, result) => {
    if (err) {
      res.send(err);
    } else {
      console.log(result)
      res.render('home', { items: result });
    }
  });
});

router.get('/sign-up', function (req, res, next) {
  res.render('sign-up');
});

router.get('/products', function (req, res, next) {
  var sql = 'SELECT * FROM products';
  connection.query(sql, (err, result) => {
    if (err) {
      res.send(err);
    } else {
      console.log(result)
      res.render('products', { items: result });
    }
  });
});

router.get('/products/searching', (req, res) => {
  var sname = req.query.name;
  console.log(sname)
  var sql = "SELECT * FROM products WHERE name LIKE '%" + sname + "%'";
  connection.query(sql, (err, result) => {
    if (err) {
      res.send(err);
    } else {
      res.render('products', { items: result });
    }
  });
});


module.exports = router;
