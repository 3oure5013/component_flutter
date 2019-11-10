const {
    Router
} = require('express');

const router = Router();
const Film = require('../models/Film');

const faker = require('faker');


//Get films
router.get('/api/films', async (req, res) => {
    const films = await Film.find();
    res.json({
        "films": films
    });
});

//Get one film bye name
router.get('/api/film/:name', async (req, res) => {
    var film = "";
    try{
        let nameParam = req.params.name;
        console.log(nameParam);
        film = await Film.find( { name: nameParam } );

    }catch(e){
        res.json("Error : " + e);
    }
    res.json({
        "film": film
    });
});


//Post film
router.post('/api/film', async (req, res) => {
    //Add films here
    // req.body.name = "breecelee";
    // req.body.date = "05/05/1999";
    // req.body.duree = "01h : 03";
    // req.body.nbreplace = 3;
    try {
        await Film.create({
            name: "name",
            date: 1/03/1900,
            duree: "duree",
            lieu: "lieu",
            nbreplace: 3
        });
    } catch (e) {
        res.status(404).json({
            'code : ': 404,
            message: 'Erreur : ' + e
        });
    }

    res.json({
        status : 200,
        message: 'film added with success'
    });
});



module.exports = router;