var express = require('express');
var router = express.Router();
var mysql = require('../connect');
var session = require('express-session');

router.use(session({
  secret: 'secret',
  resave: true,
  saveUninitialized: true
}));

router.get('/admin/dashboard', (req, res) => {
  if (req.session.loggedin && req.session.type == "admin") {
    const sql = `SELECT SUM(sub_total_price) AS TotalSales FROM orders WHERE DATE(order_date) = CURDATE()`;
    mysql.query(sql, (err, result) => {
      if (err) {
        res.send(err);
      } else {
        res.render('dashboard', { products: result });

        console.log(`Result from query: `, result);
      }
    });
  } else {
    res.redirect('/login');
  }
});

module.exports = router;