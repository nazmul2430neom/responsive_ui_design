import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_design/screen/sign_up.dart';
import 'package:ui_design/widget/custom_button.dart';
import 'package:ui_design/widget/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bgColor,
        leading: Icon(Icons.close,color: Colors.white,),
        actions: [
          Center(child: Padding(
            padding: const EdgeInsets.only(right: 8),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUp()));
              },
              child: Text("Sign Up",style: myStyle(18,Colors.white,FontWeight.w600),
              ),
              ),
          ))
        ],
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text("Your Email Address",style: myStyle(20,Color(0xff8A8A8E),FontWeight.w400),),
            ),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                
                decoration: InputDecoration(
                  
                  enabledBorder: OutlineInputBorder(
                  
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.white,width: 1),
                    
                  ),
                  hintText: "Enter your email address",
                  hintStyle: myStyle(16,Color(0xff8A8A8E),FontWeight.w400),
                  prefixIcon: Icon(Icons.email,color: Color(0xff8A8A8E),),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text("Your Password",style: myStyle(20,Color(0xff8A8A8E),FontWeight.w400),),
            ),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                
                decoration: InputDecoration(
                  
                  enabledBorder: OutlineInputBorder(
                  
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.white,width: 1),
                    
                  ),
                  hintText: "Enter your password",
                  hintStyle: myStyle(16,Color(0xff8A8A8E),FontWeight.w400),
                 // prefixIcon: SvgPicture.asset("asset/Key.svg",height: 20,width: 11,),
                 prefixIcon: Icon(Icons.key,color: Color(0xff8A8A8E),),
                ),
              ),
            ),
            SizedBox(height: 16),

            CustomButton(
              text: "Login",
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUp()));
              },
              ),
            SizedBox(height: 16),
            Center(child: Text("Forget Your Password",style: myStyle(16,Color(0xffF8F8F8),FontWeight.w400),)),
          ],
        ),
      ),
    );
  }
}