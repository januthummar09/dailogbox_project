import 'package:flutter/material.dart';

class SecondTextfildScreen extends StatefulWidget {
  final String? name;
  final dynamic password;
  final dynamic email;
  
  const SecondTextfildScreen({Key? key, required this.name,required this.password,required this.email}) : super(key: key);

  @override
  State<SecondTextfildScreen> createState() => _SecondTextfildScreenState();
}

class _SecondTextfildScreenState extends State<SecondTextfildScreen> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome.. ${widget.name}",style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              Text("Welcome.. ${widget.password}",style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Back"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
