import 'package:dailogbox_project/second_textfild_screen.dart';
import 'package:flutter/material.dart';

class FirstTextfildScreen extends StatefulWidget {
  const FirstTextfildScreen({Key? key}) : super(key: key);

  @override
  State<FirstTextfildScreen> createState() => _FirstTextfildScreenState();
}

class _FirstTextfildScreenState extends State<FirstTextfildScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "enter name",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "enter name",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              controller: emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "enter name",
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SecondTextfildScreen(
                        name: nameController.text,
                        password: passwordController.text,
                        email: emailController.text)),
              );
            },
            child: const Text("data"),
          ),
        ],
      ),
    );
  }
}
