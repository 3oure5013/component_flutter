const {
    Router
} = require('express');

const router = Router();
const Video = require('../models/Video');

const faker = require('faker');


//Get Videos
router.get('/api/videos', async (req, res) => {
    const videos = await Video.find();
    res.json({
        "Videos": videos
    });
});

//Get one Video bye name
router.get('/api/video/:name', async (req, res) => {
    var Video = "";
    try {
        let nameParam = req.params.name;
        console.log(nameParam);
        Video = await Video.find({
            name: nameParam
        });

    } catch (e) {
        res.json("Error : " + e);
    }
    res.json({
        "Video": Video
    });
});


//Post Video
router.post('/api/video', async (req, res) => {
    //Add Videos here
    // req.body.name = "breecelee";
    // req.body.date = "05/05/1999";
    // req.body.duree = "01h : 03";
    // req.body.nbreplace = 3;

    //         name: "rambo",
    //         date: "12/03/1988",
    //         duree: "1h 45min",
    //         url: "www.url.v",

    try {
        await Video.create({
            name: "rambo",
            date: 12/03/1988,
            duree: "1h 45min",
            url: "www.url.v",
        });
    } catch (e) {
        res.status(404).json({
            'code : ': 404,
            message: 'Erreur : ' + e
        });
    }

    res.json({
        status: 200,
        message: 'Video added with success'
    });
});



module.exports = router;