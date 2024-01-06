import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rafik/ui/screens/cbs_screen.dart';

import '../utlities/app_colors.dart';
import '../utlities/app_theme.dart';

class InformsScreen extends StatelessWidget {
  const InformsScreen({super.key});
  static const String routeName = "Informs Screen";

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var value = -1;
    return  Scaffold(
        backgroundColor: AppColors.backGroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: DropdownButtonFormField(
                    iconSize: 0,
                    decoration: InputDecoration(
                        focusColor: AppColors.grey,
                        suffixIcon: Icon(
                          Icons.arrow_drop_down_circle_sharp,
                          color: AppColors.grey,
                        ),
                        fillColor: Colors.white,
                        focusedBorder:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                                color: AppColors.grey
                            )
                        ) ,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: AppColors.grey,
                            )
                        )
                    ),
                    value: value,
                    items: [
                      DropdownMenuItem(child: Text("Medical result last Week",style: AppTheme.informStyle,),value: -1,),
                      DropdownMenuItem(child: Text("Medical result last Week",style: AppTheme.informStyle,),value: 1,),
                      DropdownMenuItem(child: Text("Medical result last Week",style: AppTheme.informStyle,),value: 2,),
                    ],
                    onChanged: (value){

                    }),
              ),
              Text("Date",style: AppTheme.informStyle,),
              Text("12/23/2023",style: AppTheme.informStyle.copyWith(
                  color: AppColors.grey, fontSize: 14
              ),
              ),
            ],
          ),
          SizedBox(height: height*0.01,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Test ",style: AppTheme.informStyle,),
              Text("Result",style: AppTheme.informStyle,),
              Text("Normal Page",style: AppTheme.informStyle),
            ],
          ),
          SizedBox(height: height*0.01,),
          Divider(
            color: AppColors.subscribeColor,
            thickness: 0.8,
            height: 1,
          ),
          SizedBox(height: height*0.03,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: (){
                  Navigator.pushNamed(context, CBSScreen.routeName);
                },
                  child: Text("CBC ",style: AppTheme.informStyle,)),
              Text("14",style: AppTheme.informStyle.copyWith(
              color: AppColors.grey, fontSize: 14
              ),),

              Text("11 to 18 ",style: AppTheme.informStyle.copyWith(
                  color: AppColors.grey, fontSize: 14
              ),
              ),
            ],
          ),
          SizedBox(height: height*0.01,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("HemoGlopin",style: AppTheme.informStyle,),
              Text("14",style: AppTheme.informStyle.copyWith(
                  color: AppColors.grey, fontSize: 14
              ),),

              Text("13.8 to 17.2 ",style: AppTheme.informStyle.copyWith(
                  color: AppColors.grey, fontSize: 14
              ),
              ),
            ],
          ),



        ],
      ),
    );
  }
}
