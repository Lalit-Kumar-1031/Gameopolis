import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:gameopolis/Screens/Forgot_Screen.dart';
import 'package:gameopolis/Screens/SignUpScreen.dart';
import 'package:gameopolis/Utils/color.dart';
import 'package:gameopolis/widget/simple_button.dart';
import 'package:gameopolis/widget/text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailormobController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ColorfulSafeArea(
      color: splashColor,
      child: Scaffold(
        backgroundColor: splashColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Center(
                child: Image.asset(
                  'assets/images/login.png',
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 0.52,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                  child: Text(
                "Sign In",
                style: TextStyle(
                    fontSize: 21,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )),
              SizedBox(
                height: 35,
              ),
              InputText(
                  controller: emailormobController, hint: 'Email Or Mobile'),
              SizedBox(
                height: 25,
              ),
              InputText(controller: passwordController, hint: 'Password'),
              SizedBox(
                height: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(),
                  TextButton(
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForgotScreen(),
                          ));
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              SimpleButton(callback: () {}, text: 'LOG IN'),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account? ",
                      style: TextStyle(color: Colors.white, fontSize: 14)),
                  InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpScreen(),
                            ));
                      },
                      child: Text("Register Here ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold))),
                ],
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
