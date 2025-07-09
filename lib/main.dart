// Entry point: main.dart
import 'package:flutter/material.dart';
import 'package:qrpayment/Core/Utils/ThemeManager.dart';
import 'package:qrpayment/Screens/IntroScreen.dart';
import 'package:qrpayment/Screens/LoginScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR Payment App',
      debugShowCheckedModeBanner: false,
      theme: ThemeManager.lightTheme,
      darkTheme: ThemeManager.darkTheme,
      themeMode: ThemeMode.system,
      home: const IntroScreen(),
      routes: {'/login': (context) => const LoginScreen()},
    );
  }
}
