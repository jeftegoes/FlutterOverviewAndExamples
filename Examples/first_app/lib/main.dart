import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: [
            Color.fromARGB(225, 26, 2, 80),
            Color.fromARGB(225, 45, 7, 98),
          ],
        ),
      ),
    ),
  );
}
