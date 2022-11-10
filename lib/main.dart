import 'package:flutter/material.dart';
import 'package:flutter_app_2/screens/container_test_screen.dart/row_column_test.dart';

import 'screens/container_test_screen.dart/text_test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Widgets',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: TextTestScreen());
  }
}
