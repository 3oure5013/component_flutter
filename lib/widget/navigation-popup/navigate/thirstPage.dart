import 'package:bismillah_flutter/widget/navigation-popup/navigate/secondPage.dart';
import 'package:flutter/material.dart';

void versNouvellePage(context){
  Navigator.push(context, new MaterialPageRoute(
    builder: (BuildContext context){
      return new SecondPage("Second page"); //ici on met le non de la page vers ou se diriger
    }
  ));
}