import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utlities/app_colors.dart';
import '../utlities/app_theme.dart';

class MemoryScreen extends StatelessWidget {
  const MemoryScreen({super.key});
  static const String routeName = "MemoryScreen";
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.white,
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: height*0.15,
          ),
          Center(
            child: Text("Memory Recovery Upload ",
              style: AppTheme.memoryTitleStyle,),
          ),

          SizedBox(
            height: height*0.1,
          ),
          Column(
           children: [
             Text("This section is responsible For Visual ",
             style: AppTheme.memory_Sub_TitleStyle),
             Text("Remebering To Help You To Recover ",
                 style: AppTheme.memory_Sub_TitleStyle),
             Text("The Lost Part Of Your Memory",
                 style: AppTheme.memory_Sub_TitleStyle),
           ],
         ),
          SizedBox(height: height*0.1,),
          Row(
            children: [
              Padding(
                  padding: EdgeInsets.only(left: width*0.05),
                  child: Text("My Memories",style: AppTheme.memoryTitleStyle
                    .copyWith(fontWeight: FontWeight.w600,
                  fontSize: 16),)),
              Spacer(),
              IconButton(
                icon: Icon(Icons.more_vert,color: AppColors.memory_button_color,),
                onPressed: () {
                  // Handle button press
                },
              )

            ],
          )
        ],
      )
      
     
    );
  }
}
