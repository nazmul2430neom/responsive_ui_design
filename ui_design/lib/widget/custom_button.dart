// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ui_design/widget/widgets.dart';
class CustomButton extends StatelessWidget {
  CustomButton({Key? key,required this.text,this.isClr,required this.onTap}) : super(key: key);

  String text;
  bool? isClr;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 5,right: 5),
        child: Container(
          alignment: Alignment.center,
          height: 56,
          width: double.infinity,
          decoration: BoxDecoration(
            color: isClr==null?Color(0xff246BFD):Colors.transparent,
            border: Border.all(
              color: isClr==null?Colors.transparent:Colors.white,
            ),
            borderRadius: BorderRadius.circular(24),
    
          ),
          child: Text(text,style: myStyle(20,Colors.white,FontWeight.w600),),
          
        ),
      ),
    );
  }
}