import 'package:flutter/material.dart';
import 'package:harry_potter_collection/feature/home/home.view.dart';

class SelectionHouses extends StatefulWidget {
  const SelectionHouses({super.key});

  @override
  State<SelectionHouses> createState() => _SelectionHousesState();
}

class _SelectionHousesState extends State<SelectionHouses> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/bg_one.png'),
        ),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              titlePage(),
              const SizedBox(height: 30),
              bodyPage(),
              const SizedBox(height: 30),
              titleFinal(),
            ],
          )),
    );
  }

  Widget titlePage() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Flexible(
          child: Text(
            'Escolha sua casa favorita',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 36),
          ),
        ),
        Image.asset('assets/images/logo_hogwarts.png'),
      ],
    );
  }

  Widget bodyPage() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/images/gryffindor.png'),
            Image.asset('assets/images/slytherin.png')
          ],
        ),
        SizedBox(height: 80),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/images/hufflepuff.png'),
            Image.asset('assets/images/ravenclaw.png'),
          ],
        )
      ],
    );
  }

  Widget titleFinal() {
    return GestureDetector(
      child: const Text(
        'Não tenho casa favorita',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16),
      ),
      onTap: () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => const HomePage()),
      ),
    );
  }
}
