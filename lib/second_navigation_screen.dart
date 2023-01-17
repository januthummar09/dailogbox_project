import 'package:dailogbox_project/thired_navigation_screen.dart';
import 'package:flutter/material.dart';

class SecondNavigationScreen extends StatefulWidget {
  final String? name;
  final IconData? icon;
  const SecondNavigationScreen({Key? key, this.name, this.icon}) : super(key: key);

  @override
  State<SecondNavigationScreen> createState() => _SecondNavigationScreenState();
}

class _SecondNavigationScreenState extends State<SecondNavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: const Text("S screen"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.yellow,
              child: Column(
                children: [
                  Text("${widget.name}"),
                  Icon(widget.icon),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ThiredNavigationScreen(),
                  ),
                );
              },
              child: const Text("Move to thiredScreen"),
            ),
          ],
        ),
      ),
    );
  }
}
