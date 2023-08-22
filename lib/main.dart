import 'package:flutter/material.dart';
import 'package:harry_potter_collection/feature/splash/splash.view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Harry Potter Collection',
      home: SplashView(),
    );
  }
}