 import 'package:flutter/material.dart';

class radio extends StatefulWidget {
      radio({Key key}) : super(key: key);
    
      @override 
      _radioState createState() => _radioState();
    }
    
class _radioState extends State<radio> {
      //Variable pour stocker le numéro de l'élément selectionnés
      int itemSelectionne;
      //Initiation de la Map check qui servira  à la création des radios
      List<Widget> radios () {
        List<Widget> l = [];
          for(int x =0; x<4; x++){
            Row row = new Row(
              children: <Widget>[
                //Text(Label) du radio
                new Text('Choix numéro ${x+1}'),
                //Création des Radios
                new Radio(
                  value: x, 
                  groupValue: itemSelectionne,
                  onChanged: (int i ){
                    setState(() {
                     itemSelectionne = i; //Recupère le numéro de l'élément selectionné
                    });
                  },
                )
              ],
            );
          }
        }
     

      @override
      Widget build(BuildContext context) {
        return Container(
           child: new Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: radios()  //Utilisation des radio
              )
            )
        );
      }
    }