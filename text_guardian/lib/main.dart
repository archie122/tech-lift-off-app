import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:text_guardian/pages/homepage.dart';
import 'package:text_guardian/pages/login.dart';
import 'package:text_guardian/pages/settings.dart';
import 'package:text_guardian/pages/loading.dart';
// import 'package:text_guardian/pages/results.dart';

void main() async {
  await AwesomeNotifications().initialize(null, [
    NotificationChannel(
      channelGroupKey: 'basic_channel_group',
      channelKey: 'basic_channel',
      channelName: 'Basic notifications',
      channelDescription: 'Notification channel for basic tests',
      defaultColor: Colors.teal,
      importance: NotificationImportance.High,
      enableLights: true,
      enableVibration: true,
      playSound: true,
    ),
  ], channelGroups: [
    NotificationChannelGroup(
      channelGroupKey: 'basic_channel_group',
      channelGroupName: 'Basic group',
    ),
  ]);

  bool isAllowed = await AwesomeNotifications().isNotificationAllowed();
  if (!isAllowed) {
    await AwesomeNotifications().requestPermissionToSendNotifications();
  }

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
