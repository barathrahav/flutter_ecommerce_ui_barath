import 'package:flutter/material.dart';
import 'widgets/phone_frame.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const Day3App());
}

class Day3App extends StatelessWidget {
  const Day3App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PhoneFrame(
        child: const HomeScreen(),
      ),
    );
  }
}
