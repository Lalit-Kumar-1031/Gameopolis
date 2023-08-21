import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:find_dropdown/find_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:gameopolis/Screens/LoginScreen.dart';
import 'package:gameopolis/Utils/color.dart';
import 'package:gameopolis/widget/simple_button.dart';
import 'package:gameopolis/widget/text_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final mobileController = TextEditingController();
  final searchController = TextEditingController();
  String CountryCode = "+91 India";

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
                "Sign Up",
                style: TextStyle(
                    fontSize: 21,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )),
              SizedBox(
                height: 35,
              ),
              InputText(controller: nameController, hint: 'Name'),
              SizedBox(
                height: 25,
              ),
              InputText(controller: emailController, hint: 'Email'),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(6),
                height: 52,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white,
                          blurStyle: BlurStyle.outer,
                          spreadRadius: 1,
                          blurRadius: 1)
                    ]),
                child: FindDropdown(
                  selectedItem: CountryCode,
                  searchBoxDecoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search Here',
                    border: OutlineInputBorder(),
                  ),
                  items: [
                    "+1 America ",
                    "+91 India ",
                    "+81 Japan",
                    "+92 Pakistan"
                  ],
                  onChanged: (item) {
                    setState(() {
                      CountryCode = item!;
                      print(CountryCode);
                    });
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                height: 50,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white,
                          blurStyle: BlurStyle.outer,
                          spreadRadius: 1,
                          blurRadius: 1)
                    ]),
                child: TextFormField(
                  controller: mobileController,
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Mobile No'),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              SimpleButton(callback: () {}, text: 'SIGN UP'),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account? ",
                      style: TextStyle(color: Colors.white, fontSize: 14)),
                  InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ));
                      },
                      child: Text("Login ",
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
