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
        res.render("store")
    })
    app.get('/contact', async (req,res) =>{
        res.render("contact")
    })
}