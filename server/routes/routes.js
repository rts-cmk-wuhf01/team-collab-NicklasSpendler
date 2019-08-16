const mysql = require('../config/mysql');

module.exports = (app) =>{

    app.get('/', async (req,res) =>{
        res.send('hello world')
    });

    app.get("/header", async (req, res, next) => {
        res.render("partials/header");
    });

}