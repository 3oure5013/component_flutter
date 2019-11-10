const {
    Router
} = require('express');

const router = Router();
const User = require('../models/User');
const Bcrypt = require("bcryptjs");
const faker = require('faker');
querystring = require('querystring');

router.get('/api/users', async (req, res) => {
    const users = await User.find();
    res.json({
        "users": users
    });
});


// 

//Get one User bye name
router.get('/api/user/:name', async (req, res) => {
    var nameParam = req.params.name;

    //Get variables
    try {
        await User.find({
            name: nameParam
        })

    } catch (e) {
        res.json("Error : " + e);
    }
    res.json({
        status: 200,
        "user": "user create successfully"
    });
});



//Post one User 
router.post('/api/user', async (req, res) => {
    let body = '';

    req.on('error', (err) => {
        if (err) {
            response.writeHead(500, {
                'Content-Type': 'text/html'
            });
            response.write('An error occurred ' + err);
            response.end();
        }
    });

    // read chunks of POST data
    req.on('data', chunk => {
        body += chunk.toString();
    });

    //Gerer les requêtes POST
    if(req.body != null){
        req.body.nomUser
    }
    // when complete POST data is received
    req.on('end', async () => {
        // use parse() method
        body = querystring.parse(body);
        await User.create(body);
        res.json({
            status: 200,
            "message": "user create successfully"
        });
        console.log(body);
        console.log("added with success");
        // rest of the code
    });
});



//Post one User for authentification
router.post('/api/user/auth', async (req, res) => {
    // var user = "";
    var data = "";
    var phone = "";
    var password = "";

    req.on('error', (err) => {
        if (err) {
            response.writeHead(500, {
                'Content-Type': 'text/html'
            });
            response.write('An error occurred ' + err);
            response.end();
        }
    });

    // read chunks of POST data
    req.on('data', chunk => {
        data += chunk.toString();
    });

    // when complete POST data is received
    req.on('end', async () => {
        // use parse() method
        data = querystring.parse(data);
        // console.log(data)
        phone = data.phone;
        password = data.password;
        console.log(phone + password)
        //Get user from database
        var user = await User.findOne({
            phone : phone
        }).exec();
        console.log("-----------" + user);
        //Verify Hash password
        if ( password !==  user.password ) {
            return res.status(400).json({
                status: '400',
                auth: false,
                message: "The password is invalid"
            });
        }
         //The authentification is success
        res.json({
            status: '200',
            auth: true,
            message: "The username and password combination is correct!"
        });
        //console.log("auth with success");
    });

   
});



//Using faker to create user

router.get('/api/users/create', async (req, res) => {
    console.log(faker.phone.phoneNumber());
    //Générer 5 faux utilisateurs
    for (let i = 0; i < 5; i++) {
        await User.create({
            firstName: faker.name.firstName(),
            lastName: faker.name.lastName(),
            avatar: faker.image.avatar(),
            phone: faker.phone.phoneNumber(),
        })
    }
    res.json({
        message: '5 users created'
    });
});

module.exports = router;