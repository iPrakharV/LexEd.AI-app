import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LexEd.AI',
      theme: ThemeData.dark(
      ),
      home: const SplashScreen(),
       debugShowCheckedModeBanner: false,
    );
  }
}