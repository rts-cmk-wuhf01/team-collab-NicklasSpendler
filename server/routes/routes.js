const mysql = require('../config/mysql');

module.exports = (app) =>{

    app.get('/', async (req,res) =>{
        res.render("home")
    })

    app.get('/store', async (req,res) =>{
        res.render("store")
    })
    app.get('/contact', async (req,res) =>{
        res.render("contact")
    })

}