import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'package:harry_potter_collection/feature/selection_houses.view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 5),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (BuildContext context) => const SelectionHouses()),
      ),
    );

    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset('assets/images/bg_two.png',
            width: MediaQuery.of(context).size.width),
        Lottie.asset(
          'assets/animations/loading.json',
        )
      ],
    );
  }
}
