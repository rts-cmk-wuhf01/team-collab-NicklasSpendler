const mysql = require('../config/mysql');

module.exports = (app) => {

    app.get('/', async (req, res) => {
        let db = await mysql.connect();
        let [newsData] = await db.execute("SELECT title,description,img,postTime FROM newsposts")
        db.end();
        res.render("home", {
            "newsPosts": newsData
        })
    });

    app.get('/header', async (req, res, next) => {
        res.render("partials/header");
    });

    app.get('/subpage-banner', async (req, res, next) => {
        res.render("partials/underside-banner");
    });

    app.get('/store', async (req, res) => {
        let db = await mysql.connect();
        let [gamesData] = await db.execute("SELECT * FROM games")
        db.end();

        res.render("store", {
            "games": gamesData
        })
    })
    app.get('/contact', async (req, res) => {
        res.render("partials/contactform")
    })
}