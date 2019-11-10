import 'package:flutter/material.dart';

Future<Null> dialog(  BuildContext context, String title, String desc){
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context){
      return new SimpleDialog(
        title:Text("Mon titre"),
        contentPadding: EdgeInsets.all(5.0),
        children: <Widget>[
           new Container(
            height: 20.0,
          ),
          Text(desc),
          new RaisedButton(
            child: new Text(
                "OK"
              ),
            onPressed: (){
              print("Ok Appuyer");
                Navigator.pop(context);
            },
          )
        ],
      );
    }
  );
}