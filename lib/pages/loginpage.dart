// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:EBank/pages/accountrecoverypage.dart';
import 'package:EBank/pages/uihelper.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  login(String phone, String password) {
    if (phone == "" && password == "") {
      UiHelper.customAlertBox(context, "Enter Required Fileds");
    } else {
      UiHelper.customAlertBox(context, "Kam baki xw need help ma jau");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/img2.jpg",
            fit: BoxFit.cover,
          ),
          Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
                    color: Colors.purple[700]),
              ),
              Text(
                "NEPAL INVESTMENT MEGA BANK",
                style: TextStyle(color: Colors.purple[700]),
              ),
              SizedBox(
                height: 10,
              ),
              UiHelper.customTextField(phoneController, "Mobile Number",
                  Icons.phone_android, false, TextInputType.phone),
              UiHelper.customTextField(passwordController, "Password",
                  Icons.lock, true, TextInputType.text),
              SizedBox(
                height: 20,
              ),
              UiHelper.customButton(() {
                login(phoneController.text.toString(),
                    passwordController.text.toString());
              }, "Login"),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.help_outline,
                    color: Colors.purple,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AccountRecoveryPage()));
                    },
                    child: Text(
                      "Need help to connect",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                  ),
                ],
              )
            ],
          )),
        ],
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables