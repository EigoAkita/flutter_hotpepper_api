import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            color: Colors.yellow,
          ),
        ),
      ),
    );
  }
}
