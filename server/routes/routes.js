const mysql = require('../config/mysql');

module.exports = (app) => {

    app.get('/', async (req, res) => {
        let db = await mysql.connect();
        let [newsData] = await db.execute("SELECT title,newsposts.description as description,newsposts.img as img,postTime,games.id as gameid, games.name as gamename FROM newsposts INNER JOIN games on fkGame = games.id ORDER BY postTime DESC")
        db.end();
        res.render("home", {
            "newsPosts": newsData,
            page: "Home"
        })
    });
    app.get('/store', async (req, res) => {
        let db = await mysql.connect();
        let [gamesData] = await db.execute("SELECT * FROM games ORDER BY releaseDate DESC")
        db.end();

        res.render("store", {
            "games": gamesData,
            page: "Store"
        })
    })
    app.get('/contact', async (req, res) => {
        res.render("contact",{
            page: "Contact"
        })
    })
    app.post('/contact', async (req,res) =>{

        console.log('', req.body)
        let contact_name = req.body.name;
        let contact_email = req.body.mail;
        let contact_phone = req.body.phone;
        let contact_subject = req.body.subject;
        let contact_message = req.body.message;

        let parsedPhoneNumber = Number(parseInt(contact_phone));

        if(!contact_name == "" && contact_name.length > 1){
            if(!contact_email == "" && contact_email.length > 1 && validateEmail(contact_email)){
                if(!contact_phone == "" && contact_phone.length > 1 && !isNaN(parsedPhoneNumber)) {
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

    app.get('/newsposts/:category_id', async (req, res) => {
        let db = await mysql.connect();
        let [newsData] = await db.execute(`SELECT newsposts.id AS news_id,
        newsposts.title AS news_title,
        newsposts.description AS news_description,
        newsposts.img AS news_img,
        newsposts.postTime AS news_postTime,
        newsposts.fkGame AS news_fkGame
        FROM newsposts
        INNER JOIN games ON fkGame = games.id
        `)
        db.end();
        res.render("home", {
            "newsPosts": newsData,
            page: "Home"
        })
    });

}