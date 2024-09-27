import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity, 
        height: double.infinity, 
        child: Image.asset(
          'assets/images/home.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
