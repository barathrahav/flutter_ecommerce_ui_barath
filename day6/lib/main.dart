import 'package:flutter/material.dart';
import 'widgets/phone_frame.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const Day5App());
}

class Day5App extends StatelessWidget {
  const Day5App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AppShell(),
    );
  }
}

class AppShell extends StatelessWidget {
  const AppShell({super.key});

  @override
  Widget build(BuildContext context) {
    return PhoneFrame(
      child: Navigator(
        onGenerateRoute: (settings) {
          return MaterialPageRoute(
            builder: (_) => const HomeScreen(),
          );
        },
      ),
    );
  }
}
