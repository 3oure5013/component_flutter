import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:bodyContent()
    );
  }
 




 //My column widget
  Widget bodyContent(){
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
