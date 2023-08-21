import 'dart:async';

import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:gameopolis/Screens/LoginScreen.dart';
import 'package:gameopolis/Utils/color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return ColorfulSafeArea(
      color: splashColor,
      child: Scaffold(
        backgroundColor: splashColor,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 60,
              ),
              Image.asset(
                'assets/images/logo.jpg',
                height: MediaQuery.of(context).size.height * 0.6,
                width: double.infinity,
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                  height: 40,
                  width: 40,
                  color: splashColor,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.65,
                padding: EdgeInsets.all(10),
                child: const Text(
                  'Enter the tournament & win amazing prizes',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
