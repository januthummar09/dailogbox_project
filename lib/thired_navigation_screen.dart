import 'package:dailogbox_project/second_navigation_screen.dart';
import 'package:flutter/material.dart';

class ThiredNavigationScreen extends StatefulWidget {
  const ThiredNavigationScreen({Key? key}) : super(key: key);

  @override
  State<ThiredNavigationScreen> createState() => _ThiredNavigationScreenState();
}

class _ThiredNavigationScreenState extends State<ThiredNavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("T screen"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondNavigationScreen(),
                  ),
                );
              },
              child: const Text("Back To SecondScreen"),
            ),
          ],
        ),
      ),
    );
  }
}
