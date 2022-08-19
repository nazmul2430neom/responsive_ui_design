import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_design/screen/login.dart';
import 'package:ui_design/widget/custom_button.dart';
import 'package:ui_design/widget/widgets.dart';

class Onboarding3 extends StatelessWidget {
  const Onboarding3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        body: Stack(
          children: [
            Positioned(
              top: -184,
              child: Transform.rotate(
                angle: pi/6,
                child: Container(
                  height: 395,
                  width: 480,
                  decoration: BoxDecoration(
                    color: Color(0xff8E8E93),
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.5,
            ),
           Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Padding(
                 padding: const EdgeInsets.only(left: 16),
                 child: Text("Get Notified when\nyou Get a New\nAssignment",style: myStyle(36,Color(0xffE4E4E6),FontWeight.w700),),
               ),

               SizedBox(height: 32),
               Padding(
                 padding: const EdgeInsets.only(left: 16),
                 child: SvgPicture.asset("asset/s3.svg"),
               ),
              SizedBox(height: 36),
              CustomButton(
                
                text: "Sign Up", 
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPage()));
                },
                ),
              SizedBox(height: 16),
              CustomButton(
                
                text: "Login", 
                onTap: (){},
                isClr: true,
                ), 
                SizedBox(height: 30),
                SvgPicture.asset("asset/pi.svg"),
            ],
           )

            
          ],
        ),
      ),
    );
  }
}