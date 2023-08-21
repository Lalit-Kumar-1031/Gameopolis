import 'package:flutter/material.dart';
import 'package:gameopolis/Utils/color.dart';

class SimpleButton extends StatelessWidget {
  final String text;
  final VoidCallback callback;
  const SimpleButton({Key? key,required this.callback,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
        width: MediaQuery.of(context).size.width*0.8,
        child: ElevatedButton(onPressed:callback , child:Text(text,style: TextStyle(color: splashColor,fontWeight: FontWeight.bold),),
          style: ElevatedButton.styleFrom(backgroundColor:Colors.white,shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10)),)
        ));
  }
}
