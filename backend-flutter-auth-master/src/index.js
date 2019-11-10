const app = require('./app');
const { connect } = require('./database');



async function main() {

    //Database connexion
    await connect();

    //Express application
    await app.listen(4000);
    console.log("Serveur running in 4000 : connected");
}

main();