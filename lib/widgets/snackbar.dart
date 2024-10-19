import 'package:flutter/material.dart';

class SnackbarWidget extends StatelessWidget {
  const SnackbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "SnackBar",
        ),
        backgroundColor: const Color.fromARGB(97, 104, 58, 183),
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
              onPressed: () {
                final snackbar = SnackBar(
                  action: SnackBarAction(label: "Undo", onPressed: () {}),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  behavior: SnackBarBehavior.floating,
                  padding: EdgeInsets.all(15),
                  duration: const Duration(milliseconds: 3000),
                  backgroundColor: const Color.fromARGB(75, 83, 77, 77),
                  content: Text(
                    "This is a SnackBar.",
                    style: TextStyle(color: Colors.white),
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              },
              child: Text("Show SnackBar")),
        ),
      ),
    );
  }
}
