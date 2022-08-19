// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_design/screen/onboarding.dart';
import 'package:ui_design/widget/custom_button.dart';
import 'package:ui_design/widget/widgets.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          
         
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 230),
                child: Container(
                  height: 96,
                  width: 96,
                  color: Color(0xff292B3E),
                  child: Center(child: SvgPicture.asset("asset/p1.svg")),
            ),
              ),
              SizedBox(height: 10),

              Text("Rancing",style: myStyle(36,Color(0xffE4E4E6),FontWeight.w700),),
              Text("Your Personal Task Manager",style: myStyle(17,Color(0xffE4E4E6),FontWeight.w400),),
              SizedBox(
                height:MediaQuery.of(context).size.height*.25,
              ),
              
              Padding(
                padding: const EdgeInsets.only(left: 16,right: 16),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Onboarding1()));
                  },
                  child: Container(
                    height: 56,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xff246BFD),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16,right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Getting Started",style: myStyle(18,Colors.white,FontWeight.w500),),
                          Icon(Icons.arrow_forward,color: Colors.white,)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
                SizedBox(height: 15,),
                Center(child: SvgPicture.asset("asset/pi.svg")),

            ],
          )
        ),
      ),
    );
  }
}