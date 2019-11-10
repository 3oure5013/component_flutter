
import 'package:flutter/material.dart';

class bodyContent extends StatelessWidget {
  const bodyContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
         IconButton(
           icon: Icon(Icons.ac_unit),
           onPressed:(){
             print("ok");
           },
           splashColor: Colors.blueAccent,
          )
        ],
      );
  }
}