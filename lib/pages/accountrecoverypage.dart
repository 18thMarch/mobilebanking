// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AccountRecoveryPage extends StatefulWidget {
  const AccountRecoveryPage({super.key});

  @override
  State<AccountRecoveryPage> createState() => _AccountRecoveryPageState();
}

class _AccountRecoveryPageState extends State<AccountRecoveryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account Recovery"),
        centerTitle: true,
        backgroundColor: Colors.purple[300],
      ),
      body: Column(
        children: [
          // Container(
          //   margin: EdgeInsets.all(20),
          //   height: 70,
          //   decoration: BoxDecoration(
          //     border: Border.all(color: Colors.black, width: 1),
          //     boxShadow: [
          //       BoxShadow(
          //         color: Colors.grey.withOpacity(0.2),
          //         spreadRadius: 5,
          //         blurRadius: 7,
          //       ),
          //     ],
          //   ),
          // ),
          SizedBox(
            width: 200,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shadowColor: Colors.black,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.all(30)),
              child: Text("Forget Password"),
            ),
          )
        ],
      ),
    );
  }
}
