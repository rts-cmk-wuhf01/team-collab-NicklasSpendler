const mysql = require('../config/mysql');

module.exports = (app) =>{

    var dummyBlogPosts = [{
        blog_title: "test1",
        blog_contentText: "Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nisi officia illo autem impedit fugit facilis corrupti, quas quos, libero iure amet architecto eum accusantium ducimus tenetur veniam explicabo vel porro.",
        blog_imgSrc: "/img/gaming-OG.jpg"
    },{
        blog_title: "test2",
        blog_contentText: "Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nisi officia illo autem impedit fugit facilis corrupti, quas quos, libero iure amet architecto eum accusantium ducimus tenetur veniam explicabo vel porro.Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nisi officia illo autem impedit fugit facilis corrupti, quas quos, libero iure amet architecto eum accusantium ducimus tenetur veniam explicabo vel porro.",
        blog_imgSrc: "/img/dummyimg.jpg"
    }]

    var dummyGridBoxes = [{
        box_title: "test1",
        box_price: "6969",
        box_date: "69/69/6969",
        box_desc: "Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nisi officia illo autem impedit fugit facilis corrupti, quas quos, libero iure amet architecto eum accusantium ducimus tenetur veniam explicabo vel porro.Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nisi officia illo autem impedit fugit facilis corrupti, quas quos,",
        box_imgSrc: "/img/dummyimg.jpg"
    },{
        box_title: "omegalul",
        box_price: "1337",
        box_date: "13/37/1337",
        box_desc: "Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nisi officia illo autem impedit fugit facilis corrupti, quas quos",
        box_imgSrc: "/img/gaming-OG.jpg"
    },{
        box_title: "omegalul",
        box_price: "1337",
        box_date: "13/37/1337",
        box_desc: "Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nisi officia illo autem impedit fugit facilis corrupti, quas quos",
        box_imgSrc: "/img/gaming-OG.jpg"
    },{
        box_title: "omegalul",
        box_price: "1337",
        box_date: "13/37/1337",
        box_desc: "Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nisi officia illo autem impedit fugit facilis corrupti, quas quos",
        box_imgSrc: "/img/gaming-OG.jpg"
    }]

    app.get('/', async (req,res) =>{
        res.render("home",{
            "dummyBlogPosts": dummyBlogPosts
        })
    });
  
    app.get('/header', async (req, res, next) => {
        res.render("partials/header");
    });

    app.get('/subpage-banner', async (req, res, next) => {
        res.render("partials/underside-banner");
    });

    app.get('/store', async (req,res) =>{
        res.render("store", {
            "dummyGridBoxes": dummyGridBoxes
        })
    })
    app.get('/contact', async (req,res) =>{
        res.render("partials/contactform")
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
}