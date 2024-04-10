import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';


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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.favorite,
              size: 100,
              color: Colors.red,
            ),
            SizedBox(height: 20),
            Image.network(
              'assets/flutter_logo.png',
              width: 150,
            ),
            SizedBox(height: 20),
            Container(
              width: 300,
              height: 200,
              child: LineChart(
                LineChartData(
                  titlesData: FlTitlesData(
                    leftTitles: SideTitles(showTitles: false),
                    bottomTitles: SideTitles(showTitles: false),
                  ),
                  borderData: FlBorderData(show: false),
                  gridData: FlGridData(show: false),
                  lineBarsData: [
                    LineChartBarData(
                      spots: [
                        FlSpot(0, 0),
                        FlSpot(1, 3),
                        FlSpot(2, 1.5),
                        FlSpot(3, 4),
                      ],
                      isCurved: true,
                      colors: [Colors.blue],
                      dotData: FlDotData(show: false),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      
    );
  }
}

