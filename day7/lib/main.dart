import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const Day7App());
}

class Day7App extends StatelessWidget {
  const Day7App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF6F7FB),
        useMaterial3: false,
      ),

      home: const HomeScreen(),
    );
  }
}
