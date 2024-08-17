import 'package:flutter/material.dart';
import 'package:text_guardian/components/local_notifications.dart';
import 'package:text_guardian/pages/homepage.dart';
import 'package:text_guardian/pages/login.dart';
import 'package:text_guardian/pages/settings.dart';
import 'package:text_guardian/pages/loading.dart';
// import 'package:text_guardian/pages/results.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalNotifications.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.deepPurple),
      home: const LoginPage(),
      routes: {
        '/homepage': (context) => const HomePage(),
        '/login': (context) => const LoginPage(),
        '/settings': (context) => const SettingsPage(),
        '/loading': (context) => Loading(),
        // '/results': (context) => const Results(),
      },
    );
  }
}
