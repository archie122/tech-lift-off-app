import 'dart:math';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:text_guardian/components/navbar.dart';

class Results extends StatelessWidget {
  const Results({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('R E S U L T S'),
      ),
      drawer: Navbar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Here are the results : ',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 300,
              child: PieChart(
                PieChartData(
                  sections: [
                    PieChartSectionData(
                      color: Colors.red,
                      value: 25,
                      title: "25%",
                    ),
                    PieChartSectionData(
                      color: Colors.green,
                      value: 75,
                      title: "75%",
                    ),
                  ],
                  centerSpaceRadius: 80,
                ),
              ),
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: Column(
                    children: [
                      Text('Potential Phrases', style: TextStyle(fontSize: 20)),
                      Column(
                        children: [
                          Text(
                            'Phrase 1',
                            style: TextStyle(fontSize: 15, color: Colors.red),
                          ),
                          Text(
                            'Phrase 2',
                            style: TextStyle(fontSize: 15, color: Colors.red),
                          ),
                          Text(
                            'Phrase 3',
                            style: TextStyle(fontSize: 15, color: Colors.red),
                          ),
                          Text(
                            'Phrase 4',
                            style: TextStyle(fontSize: 15, color: Colors.red),
                          ),
                          Text(
                            'Phrase 5',
                            style: TextStyle(fontSize: 15, color: Colors.red),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
