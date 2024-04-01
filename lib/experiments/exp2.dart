import 'package:flutter/material.dart';

class Experiment2 extends StatelessWidget {
  const Experiment2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 0, 0, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          
          Center(
            child: TextButton(
              onLongPress: () => print("Long Pressed"),
              child: const Text(
                "red",
                style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                backgroundColor: Colors.red
              ),

              ),

              onPressed: (){
                print("Just pressed");
              }, 
            )
              
            
          ),

          const SizedBox(height: 20,),

          Center(
            child: ElevatedButton(
              onPressed: () => print("Clicked On Elevated Button"),
              child: const Text(
                " Button",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),

          const SizedBox(height: 20,),
          
          Center(
            child: OutlinedButton(
              onPressed: () => print("Clicked On Elevated Button"),
              child: const Text(
                " Button",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}