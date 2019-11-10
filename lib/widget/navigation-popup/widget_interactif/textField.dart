import 'package:flutter/material.dart';

class name extends StatefulWidget {
  name({Key key}) : super(key: key);

  @override
  _nameState createState() => _nameState();
}

class _nameState extends State<name> {
  String changed;
  String submitted;
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      /*
        -On utilise gesture detector pourqu'on ne soit pas aubligé de cliquer sur le bouton valider du clavier
        On peut cliquer juste à l'extérieure et notre champ ets automatiquement soumit 
        -Il faut bien prevoir ce cas pour les devise IOS car le type numerique de IOS n'a pas de touche validé
  
     */
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: Scaffold(
            body: new Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new TextField(
                    keyboardType: TextInputType
                        .text /*number, emailAddress, multiline, phone, url... */,
                    onChanged: (String string) {
                      setState(() {
                        changed = string;
                      });
                    },
                    onSubmitted: (String string) {
                      changed = string;
                    },
                    decoration: new InputDecoration(labelText: 'Entrez votre nom : '),
                  ),
                  new Text(changed ?? ''),
                  new Text(submitted ?? '')
                ],
            )
        )
      ),
    );
  }
}
