var connection = require('../connect');
var express = require('express');
var router = express.Router();
var session = require('express-session');

router.use(session({
    secret: 'secret',
    resave: true,
    saveUninitialized: true
}));

router.get('/admin/accounts', function (req, res, next) {
    if (req.session.loggedin && req.session.type == "admin") {
        var sql = 'SELECT * FROM accounts a JOIN customers c ON a.customer_id = c.customer_id';
        connection.query(sql, (err, result) => {
            if (err) {
                res.send(err);
            } else {
                console.log(result)
                res.render('accounts', { items: result });
            }
        });
    } else {
        res.redirect('/login');
    }
});

router.get('/admin/accounts/searching', (req, res) => {
    if (req.session.loggedin && req.session.type == "admin") {
        var sname = req.query.username;
        console.log(sname)
        var sql = "SELECT * FROM accounts a JOIN customers c ON a.customer_id = c.customer_id WHERE a.username LIKE '%" + sname + "%'";
        connection.query(sql, (err, result) => {
            if (err) {
                res.send(err);
            } else {
                // console.log(result)
                res.render('accounts', { items: result });
            }
        });
    } else {
        res.redirect('/login');
    }
});

router.post('/admin/accounts/edit/:account_id', (req, res) => {
    if (req.session.loggedin && req.session.type === "admin") {
        var sql = 'UPDATE customers SET ? WHERE customer_id = ?';
        var data = {
            email: req.body.email,
            firstname: req.body.firstname,
            lastname: req.body.lastname,
            address: req.body.address,
            phonenumber: req.body.phonenumber,
        };
        var params = [data, req.params.account_id]; // Changed from products_id to account_id
        connection.query(sql, params, (err, result) => {
            if (err) {
                res.send(err);
            } else {
                var sql2 = 'UPDATE accounts SET ? WHERE account_id = ?'; // Assuming you have a column named 'customer_id'
                var data2 = {
                    type: req.body.type,
                    username: req.body.username,
                };
                var params2 = [data2, req.params.account_id]; // Changed from products_id to account_id
                connection.query(sql2, params2, (err2, result2) => {
                    if (err2) {
                        res.send(err2);
                    } else {
                        res.redirect('/admin/accounts');
                    }
                });
            }
        });
    } else {
        res.redirect('/login');
    }
});


router.get('/admin/logs', function (req, res, next) {
    if (req.session.loggedin && req.session.type == "admin") {
        var sql = 'SELECT * FROM accounts a JOIN logs_admin l ON a.customer_id = accounts_id ORDER BY l.log_admin_id;';
        connection.query(sql, (err, result) => {
            if (err) {
                res.send(err);
            } else {
                console.log(result)
                res.render('logs', { items: result });
            }
        });
    } else {
        res.redirect('/login');
    }
});

router.get('/admin/products', function (req, res, next) {
    if (req.session.loggedin && req.session.type == "admin") {
        var sql = 'SELECT * FROM products';
        connection.query(sql, (err, result) => {
            if (err) {
                res.send(err);
            } else {
                console.log(result)
                res.render('admin-products', { items: result });
            }
        });
    } else {
        res.redirect('/login');
    }
});


router.post('/admin/products/add', (req, res) => {
    var data = {
        image: req.body.productImage,
        name: req.body.productName,
        detail: req.body.productDetail,
        price: req.body.productPrice,
        stock: req.body.productStock,
    };
    console.log(data)
    var sql = 'INSERT INTO products SET ?';
    connection.query(sql, data, (err, result) => {
        if (err) {
            res.send(err);
        } else {
            console.log(result)
            res.redirect('/admin/products');
        }
    });
});

router.get('/admin/products/searching', (req, res) => {
    if (req.session.loggedin && req.session.type == "admin") {
        var sname = req.query.name;
        console.log(sname)
        var sql = "SELECT * FROM products WHERE name LIKE '%" + sname + "%'";
        connection.query(sql, (err, result) => {
            if (err) {
                res.send(err);
            } else {
                console.log(result)
                res.render('admin-products', { items: result });
            }
        });
    } else {
        res.redirect('/login');
    }
});

router.post('/admin/products/edit/:products_id', (req, res) => {
    if (req.session.loggedin && req.session.type == "admin") {
        var sql = 'UPDATE products SET? WHERE products_id =?';
        var params=[req.body, req.params.products_id];
        console.log(params)
        connection.query(sql, params, (err, result) => {
            if (err) {
                res.send(err);
            } else {
                console.log(result)
                res.redirect('/admin/products');
            }
        });
    } else {
        res.redirect('/login');
    }
});

router.get('/admin/products/delete/:products_id', (req, res) => {
    if (req.session.loggedin && req.session.type == "admin") {
        var sql = 'DELETE FROM products WHERE products_id = ?';
        var id = req.params.products_id;
        connection.query(sql, id, (err, result) => {
            if (err) {
                console.log(err);
                res.status(500).send('Error deleting product');
            } else {
                console.log(result);
                res.redirect('/admin/products');
            }
        });
    } else {
        res.redirect('/login');
    }
});

module.exports = router;