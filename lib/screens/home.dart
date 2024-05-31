import 'dart:math';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() => _Home();
}

class _Home extends State<Home> {
  @override
  void initState() {
    AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
      if (!isAllowed) {
        AwesomeNotifications().requestPermissionToSendNotifications();
      }
    });
    super.initState();
  }

  void triggerNotification() {
    AwesomeNotifications().createNotification(
        content: NotificationContent(
            notificationLayout: NotificationLayout.BigPicture,
            id: Random().nextInt(30),
            channelKey: 'notification_project',
            title: 'Bater ponto',
            body: 'Não se esqueça de bater o ponto.'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
              onPressed: () => triggerNotification(),
              child: const Text('Exibir Notificação'))
        ],
      ),
    ));
  }
}
