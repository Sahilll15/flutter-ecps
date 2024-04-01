import 'package:flutter/material.dart';

class Experiment1 extends StatelessWidget{

  const Experiment1({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      color: Color.fromARGB(255, 223, 113, 106),

      child: const Center(
        
        child: Text(
          "Hello World",
          style: TextStyle(
            fontSize: 40,
            color: Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.bold
          ),

        ),
      ),
    );
  }
}