import 'package:flutter/material.dart';
import 'package:text_guardian/components/notification.dart';
import 'package:text_guardian/components/navbar.dart';
import 'package:text_guardian/components/main_button.dart';
import 'package:text_guardian/components/textbox.dart';

// import 'package:text_guardian/functions/scam_detector.dart';

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
                Textbox(),
                Button(),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
