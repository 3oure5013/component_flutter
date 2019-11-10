import 'package:bismillah_flutter/techo-code/codeOrganize/manyFile/bodyContent.dart';
import 'package:flutter/material.dart';



class App extends StatefulWidget {
  App({Key key}) : super(key: key);

  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: bodyContent(),
    );
  }
}