import 'package:flutter/material.dart';
import 'package:text_guardian/components/navbar.dart';
import 'package:text_guardian/components/textbox.dart';
import 'package:text_guardian/components/main_button.dart';
import 'package:text_guardian/functions/scam_detector.dart';
import 'package:text_guardian/pages/results.dart';
import 'package:text_guardian/components/notification.dart';
import 'package:text_guardian/components/alert_dialog.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  @override
  void initState() {
    super.initState();
    Noti.initialize(flutterLocalNotificationsPlugin);
  }

  void _analyzeText() {
    final name = _nameController.text.trim();
    final message = _messageController.text.trim();

    if (name.isEmpty || message.isEmpty) {
      showDialog(
        context: context,
        builder: (context) => AlertBox(),
      );
      return;
    }

    final isSuspicious = ScamLinkDetector.isSuspicious(message, name);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Results(isSuspicious: isSuspicious),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Text Guardian',
          style: TextStyle(
            letterSpacing: 1.5,
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.green,
        elevation: 0,
      ),
      drawer: Navbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Title
                const Text(
                  'Welcome Back!',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                const SizedBox(height: 10),

                // Subtitle
                const Text(
                  'Please enter the name and message you want to analyze:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 30),

                // Textbox
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Textbox(
                    nameController: _nameController,
                    messageController: _messageController,
                  ),
                ),
                const SizedBox(height: 20),

                // Analyze Button
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Button(onPressed: _analyzeText),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
