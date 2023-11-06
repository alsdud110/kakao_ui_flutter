import 'package:flutter/material.dart';
import 'package:flutter_kakao/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          elevation: 0.0,
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
          toolbarTextStyle: const TextTheme(
            titleLarge: TextStyle(
              color: Colors.black,
              fontSize: 24,
            ),
          ).bodyMedium,
          titleTextStyle: const TextTheme(
            titleLarge: TextStyle(
              color: Colors.black,
              fontSize: 24,
            ),
          ).titleLarge,
        ),
      ),
      home: const MainScreen(),
    );
  }
}
