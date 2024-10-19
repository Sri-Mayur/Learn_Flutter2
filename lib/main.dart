import 'package:flutter/material.dart';
import 'package:learning/widgets/button.dart';
import 'package:learning/widgets/container_sized.dart';
import 'package:learning/widgets/list_grid.dart';
import 'package:learning/widgets/rowscols.dart';
import 'package:learning/widgets/snackbar.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: const Color.fromARGB(255, 68, 36, 122)),
      home: SnackbarWidget(),
    );
  }
}
