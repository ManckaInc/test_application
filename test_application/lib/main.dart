// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:test_application/screens/text_color_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TextColorScreen(),
    );
  }
}
