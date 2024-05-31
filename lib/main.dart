import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:notification_project/screens/home.dart';

void main() {
  AwesomeNotifications().initialize(
      null,
      [
        NotificationChannel(
          importance: NotificationImportance.Max,
          channelShowBadge: true,
          enableVibration: true,
          channelKey: 'notification_project',
          channelName: 'notification_project',
          channelDescription: 'any_description',
          playSound: true,
          onlyAlertOnce: false,
          enableLights: true,
          ledOnMs: 1000,
          // soundSource: 'resource://raw/res_security_alarm',
        )
      ],
      debug: false);
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}
