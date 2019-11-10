import 'package:flutter/material.dart';
import 'dart:async';
//Calendrier et l'heure
class swith extends StatefulWidget {
  swith({Key key}) : super(key: key);

  @override
  _swithState createState() => _swithState();
}

class _swithState extends State<swith> {
  DateTime date;
  TimeOfDay time ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:new Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           new FlatButton(
             child: new Text(date==null? 'Calendrier' : date.toString()),
             onPressed: montrerDate,
           ),
            new FlatButton(
             child: new Text(time==null? 'Heure' : time.toString()),
             onPressed: montrerHeure,
           )
          ],
        ),
      )
    );
  }

  //Montrer la date
  Future<Null>montrerDate() async{
    DateTime choix = await showDatePicker(
      //Nous permet de choisir l'année dabord on peut mettre le jour ou une valeur
      initialDatePickerMode: DatePickerMode.year,
      context: context,
      //La date de départ : sur laquel on tombe à l'ouverture du calendrier
      initialDate: new DateTime.now(),
      //La date limite inferieure de notre calendrier
      firstDate: new DateTime(1983),
      //La date limite superiieur de notre calendrier
      lastDate: new DateTime(2045)
      );
      if(choix != null){
        setState(() {
           date = choix;          
        });
      }
  }

  //Montrer l'heure
  Future<Null>montrerHeure() async{
    TimeOfDay heure = await showTimePicker(
      context:context,
      initialTime: new TimeOfDay.now()
    );
      if(heure != null){
        setState(() {
           time = heure;          
        });
      }
  }
}