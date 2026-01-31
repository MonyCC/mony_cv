import 'package:flutter/material.dart';
import 'package:mony_cv/app/app.dart';

void main() {
  runApp(const MyCV());
}

class MyCV extends StatelessWidget {
  const MyCV({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My CV',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'JetBrainsMono',
      ),
      home: const MyCVHomePage(),
    );
  }
}