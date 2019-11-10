 import 'package:flutter/material.dart' show BuildContext, Center, Checkbox, Colors, Column, Container, Key, MainAxisAlignment, Row, State, StatefulWidget, Text, TextStyle, Widget;

class checkbox extends StatefulWidget {
      checkbox({Key key}) : super(key: key);
    
      @override 
      _checkboxState createState() => _checkboxState();
    }
    
    class _checkboxState extends State<checkbox> {

      //Initiation de la Map check qui servira  
      Map check = {
        'Carottes' : false,
        'Bananes' : false,
        'Yaourt' : false,
        'Pain' : false
      };

      //Création des checkbox
      List<Widget> checkList(){
        List<Widget> l = [];
        check.forEach((key,value){
          Row row = new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                key,
                style: TextStyle(
                  color : (value)? Colors.green : Colors.red,
                ),
              ),
              new Checkbox(
                value: (value),
                onChanged: (bool b ){
                  setState(() {
                    check[key] = b; 
                  });
                },
              )
            ],
          );
          l.add(row); 
        });
        return l;
      }
      @override
      Widget build(BuildContext context) {
        return Container(
           child: new Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: checkList() //Utilisation des checkbox
              )
            )
        );
      }
    }