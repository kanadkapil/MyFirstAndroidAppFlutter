import 'package:flutter/material.dart';
import 'index_page.dart';
import 'calculator_page.dart';
import 'clock_page.dart';
import 'morse_code_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Apps',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const IndexPage(),
      routes: {
        '/calculator': (context) => const CalculatorPage(),
        '/clock': (context) => const ClockPage(),
        '/morsecode': (context) => const MorseCodePage(),
      },
    );
  }
}
