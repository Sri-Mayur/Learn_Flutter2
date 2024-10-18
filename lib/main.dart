import 'package:flutter/material.dart';
import 'package:learning/widgets/container_sized.dart';
import 'package:learning/widgets/rowscols.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark, primaryColor: Colors.deepPurple),
      home: RowsCols(),
    );
  }
}
