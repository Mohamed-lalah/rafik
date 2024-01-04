import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utlities/app_colors.dart';
import '../utlities/app_theme.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static const String routeName = "Login";

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return  Scaffold(
      backgroundColor: AppColors.primiaryLogin,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/WhatsApp Image 2023-12-20 at 9.57 3.png"),
          const SizedBox(height:1),
           Padding(
             padding:  EdgeInsets.only(right: width*0.35),
             child: Text("Please Enter Your Information",style:AppTheme.loginInfostyle),
           ),

        Container(
          width: 376,
          height: 58,
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        child:  TextField(
        decoration: InputDecoration(
          fillColor: AppColors.white,
        filled: true,

        border: OutlineInputBorder(
        ),
        hintText: 'ahmed@gmail.com',
         labelText: "Email",
          labelStyle:AppTheme.loginLabelStyle
          

     ),
      ),
        ),
          Container(
            width: 376,
            height: 58,
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child:  TextField(
              decoration: InputDecoration(
                  fillColor: AppColors.white,
                  filled: true,
                  suffixIcon: Icon(Icons.remove_red_eye_rounded,
                    color: AppColors.login_hint_Color,),
                  border: OutlineInputBorder(
                  ),
                  hintText: '****************',
                  labelText: "Password",
                  labelStyle:AppTheme.loginLabelStyle
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left: width*0.6,bottom: height*0.01),
            child:TextButton(
              child :Text("Forget Your Password?",
                  style: AppTheme.smallDetails)
              ,   onPressed: (){},
            )
          ),
          Container(
            height: 39,
            width: 365,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all<Color>(AppColors.login_Button_Color),
                ),
                onPressed: (){},
                child:Text("Log In",style: AppTheme.login_Elevated_Button,) ),
          ),
          const Row(
            children: [
              Text("you don't have account"),
              Text("create one "),
            ],
          ),
          SizedBox(height: 10,),
          Text("By countouing you agrees to your terms of service "),
          Text("Read out Privacy policy")

    ]),
    );
  }
}
