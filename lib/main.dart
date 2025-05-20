import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const PixcadeApp());
}

class PixcadeApp extends StatelessWidget {
  const PixcadeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pixcade',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF121212),
      ),
      home: const HomeScreen(),
    );
  }
}
