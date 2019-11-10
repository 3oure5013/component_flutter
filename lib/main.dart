import 'package:bismillah_flutter/widget/navigation-popup/popup/snackbar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: true,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
          BuildContext context;
  @override
  Widget build(BuildContext context) {
       return Scaffold(
      appBar: AppBar(
            title: Text(
              'Mon titre',
            ),
      ),

      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            onPressed:(){
              snack(context);
              },
            child: new Row(children: <Widget>[
              new Icon(Icons.ac_unit),
              Text( 'Mon button '),
            ],) ,
            padding: EdgeInsets.all(20),
            elevation: 5.0,
            color: Colors.blue,
            hoverColor: Colors.white,
          )
        ],
      ),
    );
  }

}
