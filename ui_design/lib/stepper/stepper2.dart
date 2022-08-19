import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_design/stepper/stepper3.dart';
import 'package:ui_design/widget/custom_button.dart';
import 'package:ui_design/widget/widgets.dart';

class Stepper2 extends StatelessWidget {
  const Stepper2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          backgroundColor: bgColor,
          elevation: 0,
          centerTitle: true,
          leading: Icon(Icons.arrow_back_ios,color: Colors.white,),
          title: SvgPicture.asset("asset/s6.svg"),
        ),
        body: Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left: 16,right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Padding(
                   padding: const EdgeInsets.only(top: 40),
                   child: CustomButton(
                    text: "Create Your Own Team", 
                   onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Stepper3()));
                   },
                   ),
                 ),

                 Center(child: Padding(
                   padding: const EdgeInsets.only(top: 24),
                   child: Text("Or",style: myStyle(20,Color(0xffF8F8F8),FontWeight.w700),),
                 ),
                 ),

                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: CustomButton(
                    text: "Join Team",
                     onTap: (){},
                     isClr: true,
                     ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}