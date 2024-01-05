import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rafik/ui/utlities/app_colors.dart';

class UploadPhoto extends StatelessWidget {
  const UploadPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height:height*0.6,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text("cancel"),
                ),
                SizedBox(width: width*0.2,),
                Text("Memory Upload "),
                Spacer(),

              ],
            ),
            SizedBox(height: height*0.03,),
            Stack(
              children: [
                Image.asset("assets/images/Rectangle 1x.png"),
                Stack(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(top: height*0.49,left: width*0.43,),
                      child: Image.asset("assets/images/Ellipse 1x.png"),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: height*0.511,left: width*0.47,),
                      child: Icon(Icons.camera_alt_outlined,size: 40,
                        color: AppColors.white,),
                    )
                  ],
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}
