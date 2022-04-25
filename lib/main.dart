import 'package:flutter/material.dart';
import 'package:wedding_nr/pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'N&R Wedding',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: const MainPage(),
    );
  }
}
