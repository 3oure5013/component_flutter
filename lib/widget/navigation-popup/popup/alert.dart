import 'package:flutter/material.dart';

//C'est une fonction qui renvoi un future on peut l'utiliser 
Future<Null> alerte(BuildContext context) async{
  return showDialog(
    context: context,
    barrierDismissible: true, //permet de fermer en cliquant autour si true et pas possible si false
    builder: (BuildContext context){
      return new AlertDialog(
        title: Text("mon titre"),
        content: Text("Mon contenu"),
        contentPadding: EdgeInsets.all(5.0),
        actions: <Widget>[
          new FlatButton(
            child: Text("Annuler"),
            onPressed: (){
                print("Annuler");
            },
          ),
           new FlatButton(
            child: Text("Continuer"),
            onPressed: (){
              Navigator.pop(context); //go precedent page
            },
          )
        ],
      );
    },

  );
}