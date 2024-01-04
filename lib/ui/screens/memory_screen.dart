import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utlities/app_colors.dart';
import '../utlities/app_theme.dart';
import '../widgets/memories_widget.dart';

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
      SingleChildScrollView(
        child: Column(
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
            SizedBox(height: height*0.06,),
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
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Memories(path:"assets/images/photo1(1x).png" ,),
                        SizedBox(width: width*0.02,),
                        Memories(path:"assets/images/photo2(1X).png" ,),
                        SizedBox(width: width* 0.02,),
                        Memories(path:"assets/images/photo3 (1X).png" ,)
                      ],
                    ),
                    Row(
                      children: [
                        Memories(path:"assets/images/photo1(1x).png" ,),
                        SizedBox(width: width*0.02,),
                        Memories(path:"assets/images/photo2(1X).png" ,),
                        SizedBox(width: width* 0.02,),
                        Memories(path:"assets/images/photo3 (1X).png" ,)
                      ],
                    ),
                    Row(
                      children: [
                        Memories(path:"assets/images/photo1(1x).png" ,),
                        SizedBox(width: width*0.02,),
                        Memories(path:"assets/images/photo2(1X).png" ,),
                        SizedBox(width: width* 0.02,),
                        Memories(path:"assets/images/photo3 (1X).png" ,)
                      ],
                    ),

                  ],
                ),
              ),
            )
          ],
        ),
      )
      
     
    );
  }
}
