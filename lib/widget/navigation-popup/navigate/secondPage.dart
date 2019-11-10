import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  
  String title; 

  
  SecondPage(String title){
    this.title = title;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        title
      ),
    );
  }
}