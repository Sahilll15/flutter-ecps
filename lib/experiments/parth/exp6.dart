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
        title: Text('34_PARTHPATIL_EXP6',
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        ),
      ),
      body: Column(
		mainAxisAlignment: MainAxisAlignment.spaceAround,
		children: <Widget>[
		Container(
			decoration: BoxDecoration(
				borderRadius: BorderRadius.circular(10), color: Colors.green),
			child: const Padding(
			padding: EdgeInsets.all(8.0),
			child: Text(
				"34",
				style: TextStyle(color: Colors.white, fontSize: 25),
			),
			),
		),
		Container(
			decoration: BoxDecoration(
				borderRadius: BorderRadius.circular(10), color: Colors.green),
			child: const Padding(
			padding: EdgeInsets.all(8.0),
			child: Text(
				"parth",
				style: TextStyle(color: Colors.white, fontSize: 25),
			),
			),
		),
		Container(
			decoration: BoxDecoration(
				borderRadius: BorderRadius.circular(10), color: Colors.green),
			child: const Padding(
			padding: EdgeInsets.all(8.0),
			child: Text(
				"patil",
				style: TextStyle(color: Colors.white, fontSize: 25),
			),
			),
		)
		],
	)
      
    );
  }
}

