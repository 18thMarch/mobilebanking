// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AccountRecoveryPage extends StatefulWidget {
  const AccountRecoveryPage({super.key});

  @override
  State<AccountRecoveryPage> createState() => _AccountRecoveryPageState();
}

class _AccountRecoveryPageState extends State<AccountRecoveryPage> {
  final Uri _url1 =
      Uri.parse('https://www.facebook.com/ujwal.sayaju?mibextid=ZbWKwL');
  final Uri _url2 =
      Uri.parse('https://www.instagram.com/uzzwal_10?igsh=N2xsbm02dWY3NHlh');

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url1)) {
      throw Exception('Could not launch $_url1');
    }
  }

  Future<void> _launchUrl2() async {
    if (!await launchUrl(_url2)) {
      throw Exception('Could not launch $_url2');
    }
  }

  Color _containerColor = Colors.white;

  void _changeColor() {
    setState(() {
      _containerColor = Colors.grey;
    });
  }

  void _resetColor() {
    setState(() {
      _containerColor = Colors.white;
    });
  }

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
          Container(
            margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              // color: Colors.white,
              color: _containerColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 3,
                  spreadRadius: 4,
                  offset: Offset(1, 1),
                ),
              ],
            ),
            child: InkWell(
              onTap: () {
                _changeColor();
                // Future.delayed(
                //   Duration(seconds: 4),
                //   () {
                //     Navigator.pop(context);
                //   },
                // );
                Navigator.pop(context);
              },
              onTapCancel: _resetColor,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Text(
                          "Forget Password",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                      ),
                      Text("Recovery/Reset your login password."),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.navigate_next),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              // color: Colors.white,
              color: _containerColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 3,
                  spreadRadius: 4,
                  offset: Offset(1, 1),
                ),
              ],
            ),
            child: InkWell(
              onTap: () {
                _changeColor();
                // Future.delayed(
                //   Duration(seconds: 4),
                //   () {
                //     Navigator.pop(context);
                //   },
                // );
                Navigator.pop(context);
              },
              onTapCancel: _resetColor,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Text(
                          "Activate Account",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                      ),
                      Text("Activate your bank account with few steps."),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.navigate_next),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 30, 20, 0),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 3,
                  spreadRadius: 4,
                  offset: Offset(1, 1),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      height: 150,
                      width: double.infinity,
                      child: Image.asset("assets/icons/logo1.png")),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "For further assistance on recovering",
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        "your account, please contact us.",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      launchUrl(Uri(scheme: 'tel', path: "+977 9840171036"),
                          mode: LaunchMode.externalApplication);
                    },
                    child: Row(
                      children: [
                        Icon(Icons.phone_android),
                        Text(
                          "  +977 9840171036",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      launchUrl(
                          Uri(
                              scheme: 'mailto',
                              path: "the18thmarch10@gmail.com"),
                          mode: LaunchMode.externalApplication);
                    },
                    child: Row(
                      children: [
                        Icon(Icons.mail),
                        Text(
                          "  the18thmarch10@gmail.com",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Connect with us",
                    style: TextStyle(fontSize: 16),
                  ),
                  TextButton(
                    onPressed: _launchUrl,
                    child: Row(
                      children: [
                        Icon(
                          Icons.facebook,
                          color: Colors.blue,
                        ),
                        Text(
                          "   FACEBOOK",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: _launchUrl2,
                    child: Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.squareInstagram,
                          color: Colors.pinkAccent,
                        ),
                        Text(
                          "   INSTAGRAM",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
