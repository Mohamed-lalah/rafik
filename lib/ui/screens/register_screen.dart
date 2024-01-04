import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utlities/app_colors.dart';
import '../utlities/app_theme.dart';
import 'login_screeen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});
  static const String routeName = "Register";

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return  Scaffold(
      resizeToAvoidBottomInset: false,
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
                    label:  Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: width*0.2,top: height*0.01),
                          child: Text("Name",style: AppTheme.loginLabelStyle,),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 6),
                          child: Text("Ahmed Adel",style: AppTheme.login_hint_Style,),
                        )
                      ],
                    ),
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

                    border: OutlineInputBorder(
                    ),
                    label:  Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: width*0.3,top: height*0.01),
                          child: Text("Email",style: AppTheme.loginLabelStyle,),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Text("ahmed@gmail.com",style: AppTheme.login_hint_Style,),
                        )
                      ],
                    ),
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
                    suffixIcon: Icon(Icons.remove_red_eye_rounded,
                      color: AppColors.login_hint_Color,),
                    fillColor: AppColors.white,
                    filled: true,

                    border: OutlineInputBorder(
                    ),
                    label:  Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: width*0.3,top: height*0.01),
                          child: Text("Password",style: AppTheme.loginLabelStyle,),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Text("****************",style: AppTheme.login_hint_Style,),
                        )
                      ],
                    ),
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
                    suffixIcon: Icon(Icons.remove_red_eye_rounded,
                      color: AppColors.login_hint_Color,),
                    fillColor: AppColors.white,
                    filled: true,

                    border: OutlineInputBorder(
                    ),
                    label:  Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: width*0.3,top: height*0.01),
                          child: Text("Confirm Password",style: AppTheme.loginLabelStyle,),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Text("***************",style: AppTheme.login_hint_Style,),
                        )
                      ],
                    ),
                    labelStyle:AppTheme.loginLabelStyle


                ),
              ),
            ),
            SizedBox(height: 0.02,),
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
                  child:Text("Register",style: AppTheme.login_Elevated_Button,) ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Already have account ? ",
                  style:AppTheme.row_Small_Details,),
                TextButton(
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, LoginScreen.routeName);
                  },
                  child: Text("Log in  ",style: AppTheme.smallDetails.copyWith(
                      color: AppColors.login_Button_Color,
                      decorationColor: AppColors.login_Button_Color
                  ),),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("By continouing , you agree to our ",
                  style: AppTheme.row_Small_Details,),
                Text("Terms of Service",style: AppTheme.smallDetails,),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(" Read Our ",
                  style: AppTheme.row_Small_Details,),
                Text(" Privacy Policy ",style: AppTheme.smallDetails,),
              ],
            ),

          ]),
    );
  }
}
