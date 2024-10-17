import 'package:flutter/material.dart';
import 'package:learning/widgets/container_sized.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.dark, primaryColor: Colors.deepPurple),
      home: Container_Sized(),
    );
  }
}
