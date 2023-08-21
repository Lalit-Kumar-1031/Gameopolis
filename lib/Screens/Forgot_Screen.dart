import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:gameopolis/Screens/LoginScreen.dart';
import 'package:gameopolis/Utils/color.dart';
import 'package:gameopolis/widget/simple_button.dart';
import 'package:gameopolis/widget/text_field.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({Key? key}) : super(key: key);

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  final emailormobController = TextEditingController();
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
                "Forgot Password",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )),
              SizedBox(
                height: 10,
              ),
              Center(
                  child: Text(
                "Enter your register email ID",
                style: TextStyle(fontSize: 13, color: Colors.white),
              )),
              SizedBox(
                height: 35,
              ),
              InputText(
                  controller: emailormobController, hint: ' Enter Email '),
              SizedBox(
                height: 130,
              ),
              SimpleButton(callback: () {}, text: 'SUBMIT'),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Back to login screen? ",
                      style: TextStyle(color: Colors.white, fontSize: 14)),
                  InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ));
                      },
                      child: Text("Log In",
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
