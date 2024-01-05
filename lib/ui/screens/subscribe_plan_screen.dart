import 'package:flutter/material.dart';
import 'package:rafik/ui/widgets/language_widget.dart';

class SubscribeBlan extends StatelessWidget {
  const SubscribeBlan({super.key});
  static const String routeName = "Subscribe plan";
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var value = -1;
    return Scaffold(
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: height*0.12,),
          GestureDetector(
              onTap: (){
                LanguageWidget();
              },
              child: Padding(
                padding:  EdgeInsets.only(bottom:10,left: 12,right: width*0.8),
                child: Image.asset("assets/images/group 1x.png",),
              )),
          SizedBox(height: height*0.1,),
          Center(child: Image.asset("assets/images/plan1x.png")),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: DropdownButtonFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                suffixIcon: Icon(Icons.arrow_drop_down_circle_sharp),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24)
                )
              ),
              value: value,
                items: [
                  DropdownMenuItem(child: Text("intro"),value: -1,),
                  DropdownMenuItem(child: Text("text"),value: 1,),
                  DropdownMenuItem(child: Text("text"),value: 2,),
                ],
                onChanged: (value){

                }),
          )
        ],
      ),
    );
  }
}
