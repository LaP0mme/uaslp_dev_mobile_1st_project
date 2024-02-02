import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Stack(
      children: [
        Center(
          child: Text('Welcome to the Home Page',
              style: TextStyle(fontSize: 25, color: Colors.red)),
        )
      ],
    ));
  }
}
