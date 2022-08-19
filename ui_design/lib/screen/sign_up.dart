import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui_design/stepper/stepper1.dart';
import 'package:ui_design/widget/custom_button.dart';
import 'package:ui_design/widget/widgets.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
         appBar: AppBar(
          elevation: 0,
          backgroundColor: bgColor,
          leading: Icon(Icons.close,color: Color(0xffFFFFFF),),
          actions: [
            Center(child: Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Text("Sign Up",style: myStyle(18,Color(0xffE4E4E6),FontWeight.w700),),
            )),
          ],
         ),
         body: Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left: 16,top: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text("Your Email Address",style: myStyle(18,Color(0xff8A8A8E),FontWeight.w400),),
                
                 Padding(
                   padding: const EdgeInsets.only(top: 16,right: 16),
                   child: TextField(
                     decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.white,width: 1.5),
                        
                      ),
                      hintText: "Enter Your Email Address",
                      hintStyle: myStyle(17,Color(0xff8A8A8E),FontWeight.w400),
                      prefixIcon: Icon(Icons.email_outlined,color: Color(0xff8A8A8E),),
                     ),
                   ),
                 ),


                Padding(
                  padding: const EdgeInsets.only(top: 16,right: 16),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Stepper1()));
                    },
                    child: Container(
                      height: 56,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xff246BFD),
                      ),
                      child: Center(child: Text("Continue",style: myStyle(18,Colors.white,FontWeight.w600),)),
                    ),
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