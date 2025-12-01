import 'package:chat_app/screens/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @Preview(name: 'My Sample Text')
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Color.fromARGB(255, 63, 17, 177))),
      home: const AuthScreen(),
    );
  }
}
