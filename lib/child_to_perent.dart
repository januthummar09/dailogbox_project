import 'package:flutter/material.dart';

class ParentWidget extends StatelessWidget {
  const ParentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ChildWidget(
      callback: (value) => debugPrint(value),
    );
  }
}

class ChildWidget extends StatefulWidget {
  final Function? callback;

  const ChildWidget({super.key, this.callback});

  @override
  _ChildWidgetState createState() => _ChildWidgetState();
}

class _ChildWidgetState extends State<ChildWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Parent child'),
      ),
      body: IconButton(
          onPressed: () => widget.callback!('I am your sailing child'),
          icon: const Icon(Icons.access_time_filled)),
    );
  }
}
