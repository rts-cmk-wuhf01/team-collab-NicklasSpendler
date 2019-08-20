const mysql = require('../config/mysql');

module.exports = (app) => {

    app.get('/', async (req, res) => {
        let db = await mysql.connect();
        let [newsData] = await db.execute("SELECT title,newsposts.description as description,newsposts.img as img,postTime,games.id as gameid, games.name as gamename FROM newsposts INNER JOIN games on fkGame = games.id ORDER BY postTime DESC")
        let GamesNavData = await db.execute(`
        SELECT name,
        id
        FROM games
          `)
        db.end();
        res.render("home", {
            "newsPosts": newsData,
            page: "Home",
            "gamesNav": GamesNavData[0]
        })
    });
    app.get('/store', async (req, res) => {
        let db = await mysql.connect();
        let [gamesData] = await db.execute("SELECT * FROM games ORDER BY releaseDate DESC")
        let GamesNavData = await db.execute(`
        SELECT name,
        id
        FROM games
          `)
        db.end();

        res.render("store", {
            "games": gamesData,
            page: "Store",
            "gamesNav": GamesNavData[0]
        })
    })
    app.get('/contact', async (req, res) => {
        let db = await mysql.connect();
        let GamesNavData = await db.execute(`
        SELECT name,
        id
        FROM games
          `)
          db.end();
        res.render("contact", {
            page: "Contact",
            "gamesNav": GamesNavData[0]
        })
    })
    app.post('/contact', async (req, res) => {

        console.log('', req.body)
        let contact_name = req.body.name;
        let contact_email = req.body.mail;
        let contact_phone = req.body.phone;
        let contact_subject = req.body.subject;
        let contact_message = req.body.message;

        let parsedPhoneNumber = Number(parseInt(contact_phone));

        if (!contact_name == "" && contact_name.length > 1) {
            if (!contact_email == "" && contact_email.length > 1 && validateEmail(contact_email)) {
                if (!contact_phone == "" && contact_phone.length > 1 && !isNaN(parsedPhoneNumber)) {
                    if (!contact_subject == "" && contact_subject.length > 1) {
                        if (!contact_message == "" && contact_message.length > 1) {
                            console.log('meget godt')
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

    app.get('/newsposts/:gameId', async (req, res) => {
        let db = await mysql.connect();
        let [newsData] = await db.execute(`SELECT title,
        newsposts.description as description,
        newsposts.img as img,postTime,
        games.id as gameid, 
        games.name as gamename 
        FROM newsposts
        INNER JOIN games on fkGame = games.id
        WHERE fkGame = ?
        ORDER BY postTime DESC
        `, [req.params.gameId])

        let GamesNavData = await db.execute(`
     SELECT name,
     id
     FROM games
       `)
        db.end();
        res.render("gamenews", {
            "newsPosts": newsData,
            page: newsData[0].gamename + " news",
            "gamesNav": GamesNavData[0]
        })
    });

}