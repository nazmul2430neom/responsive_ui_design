import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_design/stepper/stepper5.dart';
import 'package:ui_design/widget/custom_button.dart';
import 'package:ui_design/widget/widgets.dart';

class Stepper4 extends StatelessWidget {
  const Stepper4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         backgroundColor: bgColor,
         appBar: AppBar(
          backgroundColor: bgColor,
          centerTitle: true,
          elevation: 0,
          leading: Icon(Icons.arrow_back_ios,color: Colors.white,),
          title: SvgPicture.asset("asset/s8.svg"),
         ),

         body: Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left: 16,right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Center(child: Padding(
                   padding: const EdgeInsets.only(top: 35),
                   child: Text("Enter Your Code Team",style: myStyle(19,Color(0xffF8F8F8),FontWeight.w700),),
                 ),
                 ),

                 Padding(
                   padding: const EdgeInsets.only(top: 16),
                   child: Text("Code Team",style: myStyle(18,Color(0xff8A8A8E),FontWeight.w400)),
                 ),

                 Padding(
                   padding: const EdgeInsets.only(top: 16),
                   child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.white.withOpacity(0.3)),
                        ),
                        prefixIcon: Icon(Icons.key,color: Color(0xff8A8A8E)),
                        hintText: "e.g JXIDFLAH",
                        hintStyle: myStyle(18,Color(0xff8A8A8E),FontWeight.w400),
                    ),
                   ),
                 ),

                 Padding(
                   padding: const EdgeInsets.only(top: 180),
                   child: CustomButton(
                    text: "Continue", 
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Stepper5()));
                    },
                    ),
                 ),

              ],
            ),
          ),
         ),
      ),
    );
  }
}