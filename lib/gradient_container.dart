import 'package:dice_rolling_app/dice_roller.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget{
  const GradientContainer(this.color1,this.color2,{super.key});

  final Alignment beginAlignment = Alignment.topLeft;
  final Alignment endAlignment = Alignment.bottomRight;

  final Color color1;
  final Color color2;

  void rollDice(){
    //
  }

  @override
  Widget build(BuildContext context){
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
               color1,
               color2,
              ],
              begin: beginAlignment,
              end: endAlignment,
            )
          ),
          child: Center(
            child:DiceRoller()),
        );
  }
}