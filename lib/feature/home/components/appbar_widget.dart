import 'package:flutter/material.dart';

class AppBarHome extends StatelessWidget {
  const AppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Builder(
        builder: (BuildContext context) {
          return GestureDetector(
            child: sandwich(),
            onTap: () => Scaffold.of(context).openDrawer(),
          );
        },
      ),
    );
  }

  Widget sandwich() {
    return Column(
      children: [
        line(color: const Color.fromARGB(255, 127, 9, 9)),
        const SizedBox(height: 2),
        line(color: const Color.fromARGB(255, 255, 197, 0)),
        const SizedBox(height: 2),
        line(color: const Color.fromARGB(255, 127, 9, 9))
      ],
    );
  }

  Widget line({required Color color}) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: color),
      height: 5,
      width: 30,
    );
  }
}
