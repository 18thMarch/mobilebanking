import 'dart:async';

import 'package:EBank/pages/loginpage.dart';
import 'package:flutter/material.dart';

class SplasshScreen extends StatefulWidget {
  const SplasshScreen({super.key});

  @override
  State<SplasshScreen> createState() => _SplasshScreenState();
}

class _SplasshScreenState extends State<SplasshScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/img1.jpg",
            fit: BoxFit.cover,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 130,
                  child: Image.asset(
                    "assets/icons/logo1.png",
                  ),
                ),
                Text(
                  "NIMB",
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 99, 180, 250)),
                ),
                Text(
                  "NEPAL INVESTMENT MEGA BANK",
                  style: TextStyle(color: Colors.purple[700]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
