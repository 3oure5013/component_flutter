import 'package:flutter/material.dart';

dynamic snack(BuildContext context){
  SnackBar snackBar= new SnackBar(
    content: new Text(
      'Je suis un snackbar et je donne des infos',
      textScaleFactor: 2.0,
    ),
    duration: new Duration(seconds: 5),
  );
    
    Scaffold.of(context).showSnackBar(snackBar); //context is the context of application it's used to get current page
}