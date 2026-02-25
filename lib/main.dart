import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const TravelApp());
}

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFF0F4C5C);
    const accentColor = Color(0xFFF4A261);

    return MaterialApp(
      title: 'Atlas Travel',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: primaryColor,
          primary: primaryColor,
          secondary: accentColor,
          surface: const Color(0xFFF6F4F1),
        ),
        scaffoldBackgroundColor: const Color(0xFFF6F4F1),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFF6F4F1),
          elevation: 0,
          foregroundColor: Color(0xFF0F4C5C),
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Color(0xFF0F4C5C),
          ),
        ),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w800,
            color: Color(0xFF0F4C5C),
          ),
          headlineMedium: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
            color: Color(0xFF0F4C5C),
          ),
          titleMedium: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xFF1B3A57),
          ),
          bodyMedium: TextStyle(
            fontSize: 14,
            height: 1.5,
            color: Color(0xFF2E3A59),
          ),
        ),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
