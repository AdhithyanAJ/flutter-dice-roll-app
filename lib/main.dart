import 'package:dice_rolling_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        body:GradientContainer( 
          Colors.purple,
          Color.fromARGB(255, 112, 52, 122),
          ),
        )
    ));
}