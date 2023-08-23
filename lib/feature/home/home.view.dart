import 'package:flutter/material.dart';

import 'components/appbar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/bg_two.png'),
        ),
      ),
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarHome(),
        ),
        backgroundColor: Colors.transparent,
        drawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: const [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.yellow),
                child: Text(
                  'Harrys App',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              ListTile(),
            ],
          ),
        ),
      ),
    );
  }
// Widget itensDrawer() {
//
// }
}
