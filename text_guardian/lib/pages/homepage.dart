import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:text_guardian/components/navbar.dart';
import 'package:fl_chart/fl_chart.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('H O M E P A G E'),
      ),
      drawer: Navbar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 80),
                const Text(
                  'Welcome Back John! Here is how many texts were scanned today!',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 7, 151, 60),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 300,
                  child: PieChart(
                    PieChartData(
                      sections: [
                        PieChartSectionData(
                          color: Colors.red,
                          value: 27,
                          title: "25%",
                        ),
                        PieChartSectionData(
                          color: Colors.green,
                          value: 73,
                          title: "73%",
                        ),
                      ],
                      centerSpaceRadius: 80,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('View Details'),
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.green),
                    foregroundColor: MaterialStatePropertyAll(Colors.white),
                    padding: MaterialStatePropertyAll(
                      EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    ),
                    shape: MaterialStatePropertyAll(
                      StadiumBorder(),
                    ),
                    minimumSize: MaterialStatePropertyAll(Size.fromHeight(50)),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    elevation: MaterialStatePropertyAll(0),
                    shadowColor: MaterialStatePropertyAll(Colors.transparent),
                    surfaceTintColor:
                        MaterialStatePropertyAll(Colors.transparent),
                    visualDensity: VisualDensity.compact,
                    animationDuration: const Duration(milliseconds: 500),
                  ),
                ),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: () {},
                  child: const Text('Actions'),
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.green),
                    foregroundColor: MaterialStatePropertyAll(Colors.white),
                    padding: MaterialStatePropertyAll(
                      EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    ),
                    shape: MaterialStatePropertyAll(
                      StadiumBorder(),
                    ),
                    minimumSize: MaterialStatePropertyAll(Size.fromHeight(50)),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    elevation: MaterialStatePropertyAll(0),
                    shadowColor: MaterialStatePropertyAll(Colors.transparent),
                    surfaceTintColor:
                        MaterialStatePropertyAll(Colors.transparent),
                    visualDensity: VisualDensity.compact,
                    animationDuration: const Duration(milliseconds: 500),
                  ),
                ),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: () {},
                  child: const Text('Call Family Member'),
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.green),
                    foregroundColor: MaterialStatePropertyAll(Colors.white),
                    padding: MaterialStatePropertyAll(
                      EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    ),
                    shape: MaterialStatePropertyAll(
                      StadiumBorder(),
                    ),
                    minimumSize: MaterialStatePropertyAll(Size.fromHeight(50)),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    elevation: MaterialStatePropertyAll(0),
                    shadowColor: MaterialStatePropertyAll(Colors.transparent),
                    surfaceTintColor:
                        MaterialStatePropertyAll(Colors.transparent),
                    visualDensity: VisualDensity.compact,
                    animationDuration: const Duration(milliseconds: 500),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
