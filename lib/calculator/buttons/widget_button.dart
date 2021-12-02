import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class widget_button extends StatelessWidget {

  late String text;
  var backColor;
  var textColor;
  double textSize;
  Function? callback;
  String? history;

  widget_button({
    required this.text,
    required this.backColor,
    required this.textColor,
    required this.textSize,
     this.callback,
     this.history
});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      color: Color(backColor),
      child: SizedBox(
          width: 70,
          height: 70,
          child: TextButton(
            onPressed: ()=>callback!(text),
            child: Text(
              text,
              style:
              GoogleFonts.rubik(textStyle: TextStyle(fontSize: textSize,color: Color(textColor))),
            ),
          )
      ),
    );
  }
}
