import 'package:flutter/material.dart';
import 'package:gameopolis/Utils/color.dart';

class InputText extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  const InputText({Key? key, required this.controller, required this.hint})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      height: 50,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(color: Colors.white,blurStyle: BlurStyle.outer,spreadRadius: 1,blurRadius: 1)]
      ),
      child: TextFormField(
        cursorColor: splashColor,
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
        ),
      ),
    );
  }
}
