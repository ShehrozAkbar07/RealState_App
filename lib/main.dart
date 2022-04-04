import 'package:flutter/material.dart';
import 'package:realstate_app/dashboard.dart';
import 'package:realstate_app/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SafeArea(child: HomeScreen()),
    );
  }
}
