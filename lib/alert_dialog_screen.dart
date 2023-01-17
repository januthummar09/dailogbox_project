import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertDialogScreen extends StatefulWidget {
  const AlertDialogScreen({Key? key}) : super(key: key);

  @override
  State<AlertDialogScreen> createState() => _AlertDialogScreenState();
}

class _AlertDialogScreenState extends State<AlertDialogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => showDialog<String>(
                barrierDismissible: true,
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('AlertDialog Title'),
                  content: const Text('AlertDialog description'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'OK'),
                      child: const Text('OK'),
                    ),
                  ],
                ),
              ).then((value) => {
                    debugPrint("dailog Box 1 value.....$value"),
                  }),
              child: const Text('Show Dialog'),
            ),
            ElevatedButton(
              onPressed: () => showDialog(
                barrierDismissible: false,
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('AlertDialog Title'),
                  content: const Text('AlertDialog description'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'OK'),
                      child: const Text('OK'),
                    ),
                  ],
                ),
              ).then(
                (value) {
                  debugPrint("dailog Box 2 value.....$value");
                },
              ),
              child: const Text('Show Dialog'),
            ),
            CupertinoButton(
              onPressed: () => showCupertinoModalPopup(
                context: context,
                builder: (BuildContext context) => CupertinoAlertDialog(
                  title: const Text('Alert'),
                  content: const Text('Proceed with destructive action?'),
                  actions: <CupertinoDialogAction>[
                    CupertinoDialogAction(
                      /// This parameter indicates this action is the default,
                      /// and turns the action's text to bold text.
                      isDestructiveAction: true,

                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('No'),
                    ),
                    CupertinoDialogAction(
                      /// This parameter indicates the action would perform
                      /// a destructive action such as deletion, and turns
                      /// the action's text color to red.
                      isDefaultAction: true,

                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Yes'),
                    ),
                  ],
                ),
              ),
              child: const Text('CupertinoAlertDialog'),
            ),
          ],
        ),
      ),
    );
  }
}
