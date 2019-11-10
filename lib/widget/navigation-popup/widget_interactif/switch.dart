import 'package:flutter/material.dart';
class swith extends StatefulWidget {
  swith({Key key}) : super(key: key);

  @override
  _swithState createState() => _swithState();
}

class _swithState extends State<swith> {
  bool interupteur;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:new Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Mon label ici
            new Text("Aimez-vous codabee?"),
            //Mon switch
            Switch(
              //Color lorsque inactive
              inactiveTrackColor: Colors.red,
              //Color lorsque active
              activeColor: Colors.green,
              //Valeur du switch (On(true) or Off(false))
              value: interupteur,              
              //En quand de changement de la valeur du switch
              onChanged: (bool b){
                interupteur = b; //on obtient l'etat true ou false et  on affecte dans la variable interrupteur
              },
            )
          ],
        ),
      )
    );
  }
}