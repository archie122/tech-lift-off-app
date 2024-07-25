import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:text_guardian/components/notification.dart';
import 'package:text_guardian/components/navbar.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Noti.initialize(flutterLocalNotificationsPlugin);
  }

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
                // SizedBox(
                //   height: 300,
                //   child: PieChart(
                //     PieChartData(
                //       sections: [
                //         PieChartSectionData(
                //           color: Colors.red,
                //           value: 27,
                //           title: "25%",
                //         ),
                //         PieChartSectionData(
                //           color: Colors.green,
                //           value: 73,
                //           title: "73%",
                //         ),
                //       ],
                //       centerSpaceRadius: 80,
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: 100,
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Enter a product name eg. pension',
                      hintStyle: const TextStyle(fontSize: 14),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      filled: true,
                      contentPadding: EdgeInsets.all(16),
                    ),
                  ),
                ),
                TextButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.green),
                    foregroundColor: MaterialStatePropertyAll(Colors.white),
                    padding: MaterialStatePropertyAll(
                      EdgeInsets.symmetric(vertical: 20, horizontal: 20),
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
                    animationDuration: Duration(milliseconds: 500),
                  ),
                  child: const Text('View Details'),
                  onPressed: () {
                    Noti.showTextNotification(
                      id: 1, // Provide a unique id here
                      title: 'Text Guardian',
                      body:
                          'Your text is being analyzed and will notify you when it is ready.',
                      fin: flutterLocalNotificationsPlugin,
                    );

                    Navigator.pushNamed(context, '/loading');

                    Timer(const Duration(seconds: 20), () {
                      Noti.showTextNotification(
                        id: 1, // Provide a unique id here
                        title: 'Text Guardian',
                        body: 'The results are ready.',
                        fin: flutterLocalNotificationsPlugin,
                      );
                    });
                  },
                ),
                const SizedBox(height: 20),
                // TextButton(
                //   onPressed: () {
                //     Noti.showTextNotification(
                //       id: 1, // Provide a unique id here
                //       title: 'Text Guardian',
                //       body:
                //           'Your text has been scanned and is ready to be viewed. Please click here to view your text.',
                //       fin: flutterLocalNotificationsPlugin,
                //     );
                //   },
                //   child: const Text('Call Family Member'),
                //   style: const ButtonStyle(
                //     backgroundColor: MaterialStatePropertyAll(Colors.green),
                //     foregroundColor: MaterialStatePropertyAll(Colors.white),
                //     padding: MaterialStatePropertyAll(
                //       EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                //     ),
                //     shape: MaterialStatePropertyAll(
                //       StadiumBorder(),
                //     ),
                //     minimumSize: MaterialStatePropertyAll(Size.fromHeight(50)),
                //     tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                //     elevation: MaterialStatePropertyAll(0),
                //     shadowColor: MaterialStatePropertyAll(Colors.transparent),
                //     surfaceTintColor:
                //         MaterialStatePropertyAll(Colors.transparent),
                //     visualDensity: VisualDensity.compact,
                //     animationDuration: const Duration(milliseconds: 500),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
