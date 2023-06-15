import 'package:flutter/material.dart';

class NotificationBarScreen extends StatefulWidget {
  const NotificationBarScreen({super.key});

  @override
  State<NotificationBarScreen> createState() => _NotificationBarScreenState();
}

class _NotificationBarScreenState extends State<NotificationBarScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Notification"),
    );
  }
}
