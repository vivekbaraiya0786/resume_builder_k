import 'dart:async';

import 'package:flutter/material.dart';

import '../../utils/path.dart';

class intro_page extends StatefulWidget {
  const intro_page({Key? key}) : super(key: key);

  @override
  State<intro_page> createState() => _intro_pageState();
}

class _intro_pageState extends State<intro_page> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, 'home');
    });

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 70,
              ),
              Image.asset(introPath),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
