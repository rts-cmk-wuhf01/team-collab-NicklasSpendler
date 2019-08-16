const mysql = require('../config/mysql');

module.exports = (app) =>{

    app.get('/', async (req,res) =>{
<<<<<<< HEAD
        res.render('home')
=======
        res.render("home")
    })

    app.get('/store', async (req,res) =>{
        res.render("store")
    })
    app.get('/contact', async (req,res) =>{
        res.render("contact")
>>>>>>> upstream/master
    })

}