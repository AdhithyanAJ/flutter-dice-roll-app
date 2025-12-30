import 'package:flutter/material.dart';
import 'package:my_app/dice_roller.dart';

var beginAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;
class GradientContainer extends StatelessWidget {
    const GradientContainer(this.color1,this.color2,{super.key});

    final Color color1;
    final Color color2;

    void rolldice(){

    }
    @override
    Widget build(context) {
        return Container(
            decoration:  BoxDecoration(
                gradient: LinearGradient( colors: [
                   color1,color2],
                    begin: beginAlignment,
                    end: endAlignment,
                    ), 
                ),
            child:  Center(
              child: DiceRoller()
              ),
                
        );
        
    }
}