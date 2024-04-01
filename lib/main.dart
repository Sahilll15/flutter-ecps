// import 'package:experiments/experiments/exp1.dart';
// import 'package:experiments/experiments/exp2.dart';
// import 'package:experiments/experiments/exp3.dart';
import 'dart:math';

import 'package:experiments/experiments/exp1.dart';
import 'package:experiments/experiments/exp2.dart';
import 'package:experiments/experiments/exp3.dart';
import 'package:experiments/experiments/exp4.dart';
import 'package:experiments/experiments/exp5.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(appBar: AppBar(
        title:const Text('sahil chalke'),
        
      ),
      body: (
        Material(
        
        // child:  Experiment4And5( iconNames: ['person', 'thunder', 'book', 'car', 'alarm'])
        // child: Experiment1(),
        // child: Experiment2(),
        child:Experiment3()
        // child: Exp4(),
        // child: Exp5(),
        )
      ),
      
      
      )
    );
  }
}