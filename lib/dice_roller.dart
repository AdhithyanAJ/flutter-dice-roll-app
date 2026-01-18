import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState(){
    return  _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{
var activeDiceRoll = 'assets/images/dice-1.png';
void rollDice(){
  var diceRoll = Random().nextInt(6) + 1;
  setState(() {
    activeDiceRoll = 'assets/images/dice-$diceRoll.png';
  });
  }
  @override
  Widget build(context){
    return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  activeDiceRoll,
                  width: 200,),
                const SizedBox(height: 20),  
                TextButton(
                  onPressed: rollDice,
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    textStyle: TextStyle(
                      fontSize: 20,
                    )
                  ),
                  child: Text(
                    'Roll Dice',))
                
              ],
            );
  }
}