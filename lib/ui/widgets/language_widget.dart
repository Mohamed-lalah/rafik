import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LanguageWidget extends StatelessWidget {

  List <String>items = ["Arabic", "English", "French"];
  String dropDownValue = "Arabic";

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return
      Scaffold(
        body: DropdownButton<String>(
            value: dropDownValue,
            items: items.map<DropdownMenuItem<String>>(
                (String value){
                  return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value)
                  );
                },
            ).toList(), onChanged: (String? value) {},
           )

      );

  }
}
