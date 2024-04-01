import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(AppDadu());
}

class AppDadu extends StatelessWidget {
  const AppDadu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 64, 4, 4),
        appBar: AppBar(
          title: const Text(
            'Lempar Dadu',
            style: TextStyle(
              color: Color.fromARGB(255, 54, 54, 54),
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: HalamanDadu(),
      ),
    );
  }
}

class HalamanDadu extends StatefulWidget {
  const HalamanDadu({super.key});

  @override
  // _HalamanDaduState createState() => _HalamanDaduState();
  State<HalamanDadu> createState() => _HalamanDaduState();
}

class _HalamanDaduState extends State<HalamanDadu> {
  int daduKiriNomor = 1;
  int daduKananNomor = 1;

  void acakDadu() {
    setState(() {
      daduKiriNomor = Random().nextInt(6) + 1;
      daduKananNomor = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              child: Image.asset(
                'images/dadu$daduKiriNomor.png',
              ),
              onPressed: () {
                acakDadu();
              },
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset(
                'images/dadu$daduKananNomor.png',
              ),
              onPressed: () {
                acakDadu();
              },
            ),
          ),
        ],
      ),
    );
  }
}
