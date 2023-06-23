import 'dart:async';

import 'package:flutter/material.dart';
import 'package:harry_potter_collection/feature/home/ui/home.view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 5),
        () =>
            Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => HomePage()))
    );

    return Scaffold(
        body: Center(
      child: Text('Splash'),
    ));
  }
}
