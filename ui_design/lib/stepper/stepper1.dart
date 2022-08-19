import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ui_design/stepper/stepper2.dart';
import 'package:ui_design/widget/custom_button.dart';
import 'package:ui_design/widget/widgets.dart';

class Stepper1 extends StatefulWidget {
  const Stepper1({Key? key}) : super(key: key);

  @override
  State<Stepper1> createState() => _Stepper1State();
}

class _Stepper1State extends State<Stepper1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          backgroundColor: bgColor,
          centerTitle: true,
          leading: Icon(Icons.arrow_back_ios,color: Colors.white,),
          title:SvgPicture.asset("asset/s5.svg"),
          elevation: 0,
        ),
       
       body: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(left: 16,right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Text("Complete Your Profile",style: myStyle(18,Color(0xffF8F8F8),FontWeight.w700),),
              )),
              SizedBox(height: 16,),

              Center(
                child: InkWell(
                  onTap: () {
                    getImageGallery();
                  },
                  child: CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.grey,
                    child: img==null?Icon(Icons.camera_enhance,color: Colors.white,):Image.file(img!),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Text("Your Full Name",style: myStyle(20,Color(0xff8A8A8E),FontWeight.w400),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.white.withOpacity(0.3),width: 1.5),
                    ),
                    prefixIcon: Icon(Icons.person_outline_rounded,color: Color(0xff8A8A8E)),
                    hintText: "Enter your full name",
                    hintStyle: myStyle(18,Color(0xff8A8A8E),FontWeight.w400),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text("Your Password",style: myStyle(20,Color(0xff8A8A8E),FontWeight.w400),),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.white.withOpacity(0.3),width: 1.5),
                    ),
                    prefixIcon: Icon(Icons.key,color: Color(0xff8A8A8E)),
                    hintText: "Enter password",
                    hintStyle: myStyle(18,Color(0xff8A8A8E),FontWeight.w400),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: CustomButton(
                  text: "Continue", 
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Stepper2()));
                  },
                  ),
              )

            ],
          ),
        ),
        
       ),
        
      ),
    );
  }

  File? img;

  ImagePicker picker =ImagePicker();

  Future getImageCamera()async{
    var pickImage=await picker.pickImage(source:ImageSource.camera);
    setState(() {
      img=File(pickImage!.path);
    });
    //Navigator.of(context).pop();
  }

   Future getImageGallery()async{
    var pickImage=await picker.pickImage(source:ImageSource.gallery);
    setState(() {
      img=File(pickImage!.path);
    });
    //Navigator.of(context).pop();
  }
}