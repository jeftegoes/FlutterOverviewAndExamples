import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(224, 255, 255, 255),
          Color.fromARGB(223, 187, 187, 187),
        ),
      ),
    ),
  );
}
