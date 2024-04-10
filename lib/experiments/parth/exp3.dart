import 'package:flutter/material.dart';


void main() {
  runApp(MYapp());
}

class MYapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('34_PARTHPATIL_EXP3',
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        ),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/second');
          },
          child: Container(
      color: Color.fromARGB(255, 80, 3, 3),
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
                backgroundColor: Color.fromARGB(255, 211, 107, 100)
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
    ),
        ),
      ),
    );
  }
}
