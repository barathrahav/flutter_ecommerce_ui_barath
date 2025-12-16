import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets/phone_frame.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const Day2App());
}

class Day2App extends StatelessWidget {
  const Day2App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF4F6FB),
        textTheme: GoogleFonts.interTextTheme(),
      ),
      home: Scaffold(
        backgroundColor: const Color(0xFFE5E7EB),
        body: PhoneFrame(
          child: const HomeScreen(),
        ),
      ),
    );
  }
}
