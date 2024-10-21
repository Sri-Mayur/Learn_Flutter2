import 'package:flutter/material.dart';

class AlertWidget extends StatelessWidget {
  const AlertWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialogue"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              _showMyDialog(context);
            },
            child: Text("Show Alert")),
      ),
    );
  }

  Future<void> _showMyDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            //backgroundColor: Colors.black,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            title: Text("This is an alert"),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Text("This is a demo"),
                  Text("This is Mayur Srivastav"),
                ],
              ),
            ),
            actions: [
              TextButton(onPressed: () {}, child: Text("OK")),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Cancel"))
            ],
          );
        });
  }
}
