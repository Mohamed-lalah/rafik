import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rafik/ui/utlities/app_colors.dart';
import 'package:rafik/ui/utlities/app_theme.dart';

class UploadDone extends StatelessWidget {
  const UploadDone({super.key});

  static const String routeName = "UploadDone";

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      color: AppColors.transparent,
      height: height * 0.69,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: InkWell(child: Text(
                      "cancel", style: AppTheme.memory_cancel_style,))),
              ),
              SizedBox(width: width * 0.2,),
              Text("Memory Upload ",
                style: AppTheme.memory_Sub_TitleStyle.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w700
                ),),
              Spacer(),
            ],
          ),  //the first row
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                  Stack(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(top: height*0.15,left: width*0.43,),
                        child: Image.asset("assets/images/Ellipse 1x.png"),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: height*0.1,left: width*0.47,),
                        child: const Icon(
                          Icons.check,size: 40,
                          color: AppColors.black,),
                      )
                    ],
                  ),

                Container(
                  width: width*0.7,
                  height: height*0.2,
                  color: AppColors.white,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "text",
                      border: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(13)
                      )
                    ),
                  )
                ),
                Container(
                  height: 39,
                  width: 365,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    onPressed: (){},
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(AppColors.login_Button_Color),
                    ),
                    child: Text("confirm"),
                  ),
                ),

              ],
            ),


        ],
      ),
    );
  }
}
