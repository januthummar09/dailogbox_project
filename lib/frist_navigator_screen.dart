import 'package:dailogbox_project/second_navigation_screen.dart';
import 'package:flutter/material.dart';

class FristNavigatorScreen extends StatefulWidget {
  const FristNavigatorScreen({Key? key}) : super(key: key);

  @override
  State<FristNavigatorScreen> createState() => _FristNavigatorScreenState();
}

class _FristNavigatorScreenState extends State<FristNavigatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("F screen"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondNavigationScreen(
                      icon: Icons.add,
                      name: "janki",
                    ),
                  ),
                );
              },
              child: const Text("Move to SecondScreen"),
            ),
          ],
        ),
      ),
    );
  }
}
