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
    app.post('/contact', async (req,res) =>{

        console.log('', req.body)
        let contact_name = req.body.name;
        let contact_email = req.body.mail;
        let contact_phone = req.body.phone;
        let contact_subject = req.body.subject;
        let contact_message = req.body.message

        if(!contact_name == "" && contact_name.length > 1){
            if(!contact_email == "" && contact_email.length > 1 && validateEmail(contact_email)){
                if(!contact_phone == "" && contact_phone.length > 1) {
                    if(!contact_subject == "" && contact_subject.length > 1){
                        if(!contact_message == "" && contact_message.length > 1){
                            console.log('meget godt', )
                        }
                    }
                }
            }
        }

        res.redirect('/contact')
    })




    function validateEmail(email) {
        let regex = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    
        return regex.test(email)
    }
}