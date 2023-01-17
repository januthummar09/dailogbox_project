import 'package:flutter/material.dart';
import 'alert_dialog_screen.dart';
import 'child_to_perent.dart';
import 'frist_navigator_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const ParentWidget(),
      home: const FristNavigatorScreen(),
    );
  }
}
