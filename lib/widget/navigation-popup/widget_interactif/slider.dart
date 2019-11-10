import 'package:flutter/material.dart';
class swith extends StatefulWidget {
  swith({Key key}) : super(key: key);

  @override
  _swithState createState() => _swithState();
}

class _swithState extends State<swith> {
  double sliderDouble = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:new Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Mon label ici
            new Text("Valeur du slider ${sliderDouble}"),
            //Mon slider
            new Slider(
              //Valeur min et max
              min: 0.0,
              max : 10.0,
              //Valeur du slider
              value: sliderDouble,
              //Division pourque notre slider prend des valeurs precises(dans ce cas 0,2,4,6,8,10 car 10/5 = 2 donc 2 par 2)
              divisions: 5,
              //Couleur active et inactive
              inactiveColor: Colors.black87,
              //Active color
              activeColor: Colors.pinkAccent,
              //En quand de changement de la valeur du slider
              onChanged: (double d){
                setState(() {
                 sliderDouble = d;

                });
              },
            )
          ],
        ),
      )
    );
  }
}