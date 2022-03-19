import 'package:bmi_calculator/screens/result.dart';
import 'package:flutter/material.dart';

import 'screens/input_page.dart';

void main() {
  runApp(const BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark().copyWith(
            primaryColor: const Color(0xFF0A0E21),
            scaffoldBackgroundColor: const Color(0xFF0A0E21)),
        // home: const InputPage(),
        initialRoute: '/',
        routes: {
          '/': (context) => const InputPage(),
          '/first': (context) => const ResultsPage(
                bmiResult: '',
                interpretation: '',
                resultText: '',
              ),
        });
  }
}
