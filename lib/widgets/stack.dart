import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Stack"),
          backgroundColor: Colors.deepPurple,
        ),
        body: Stack(
          children: [
            Positioned(
                child: Container(
              child: Image.asset('assets/king.jpg'),
            ))
          ],
        ));
  }
}
