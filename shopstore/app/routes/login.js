var connection = require('../connect');
var express = require('express');
var router = express.Router();
var session = require('express-session');

router.use(session({
    secret: 'secret',
    resave: true,
    saveUninitialized: true
}));

router.get('/logout', function (req, res) {
    req.session.destroy(function (err) {
        if (err) {
            console.error('Error destroying session:', err);
        }
        res.redirect('/login');
    });
});

router.post('/login_action', function (request, response) {
    var username = request.body.username;
    var password = request.body.password;
    if (username && password) {
        connection.query('SELECT * FROM accounts WHERE username = ? AND password = ?', [username, password], function (error, results, fields) {
            if (results.length > 0) {
                request.session.loggedin = true;
                request.session.type = results[0].type;
                request.session.customer_id = results[0].customer_id;
                if (results[0].type == 'admin') {
                    const currentDate = new Date().toISOString().slice(0, 19).replace('T', ' ');
                    const logadminData = {
                        time: currentDate,
                        accounts_id: results[0].account_id
                    };
                    const query = 'INSERT INTO logs_admin SET ?';
                    connection.query(query, logadminData, (error, results, fields) => {
                        if (error) {
                            console.error('Error inserting data:', error);
                        } else {
                            console.log('Data inserted successfully!');
                        }
                    });
                    response.redirect('/admin/accounts');
                } else if (results[0].types != 'admin') {
                    response.redirect('/member/products');
                }
            } else {
                response.redirect('/login');
            }
            response.end();
        });
    } else {
        response.redirect('/login');
        response.end();
    }
});

router.get('/member/products', function (req, res, next) {
    if (req.session.loggedin) {
        var sql = 'SELECT * FROM products';
        connection.query(sql, (err, result) => {
            if (err) {
                res.send(err);
            } else {
                console.log(result)
                res.render('member-products', { items: result });
            }
        });
    } else {
        res.redirect('/products');
    }
});

module.exports = router;