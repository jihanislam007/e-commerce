
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'buttons/widget_button.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  late int firstnum;
  late int lastnum;
  late String history = '';
  late String textToDisplay = '121';
  late String res;
  late String operation;

  void btnOnClick(String btnValue){
    print(btnValue);

    if(btnValue == "C"){
      firstnum = 0;
      lastnum = 0;
      textToDisplay = "";
      res = '';
    }else if(btnValue == 'AC'){
      firstnum = 0;
      lastnum = 0;
      textToDisplay = "";
      res = '';
      history = '';
    }else if(btnValue == '+' || btnValue == '-' || btnValue == 'X' || btnValue == '/'){
      firstnum = int.parse(textToDisplay);
      lastnum = int.parse(textToDisplay);
      res =0.toString();
      operation = btnValue;
    }else if(btnValue == '='){
      lastnum = int.parse(textToDisplay);
      if(operation == "+"){
        res = (firstnum+lastnum).toString();
        history = firstnum.toString()+ operation.toString() + lastnum.toString();
      }if(operation == "-"){
        res = (firstnum-lastnum).toString();
        history = firstnum.toString()+ operation.toString() + lastnum.toString();
      }if(operation == "X"){
        res = (firstnum*lastnum).toString();
        history = firstnum.toString()+ operation.toString() + lastnum.toString();
      }if(operation == "/"){
        res = (firstnum/lastnum).toString();
        history = firstnum.toString()+ operation.toString() + lastnum.toString();
      }
    }else{
      res = int.parse(textToDisplay +btnValue).toString();
    }

    setState(() {
      textToDisplay = res;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF28527a),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [

            Container(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(history,
                style: GoogleFonts.aBeeZee(textStyle: TextStyle(fontSize: 20,color: Color(0xFFFccFFF))),),
              ),

            ),

            Container(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(textToDisplay,
                style: GoogleFonts.aBeeZee(textStyle: TextStyle(fontSize: 40,color: Color(0xFFFFFFFF))),),
              ),

            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                widget_button(text: "AC",backColor: 0xFF8ac4d0,textColor: 0xFF000000,textSize: 24,
                callback: btnOnClick,),
                widget_button(text: "C",backColor: 0xFF8ac4d0,textColor: 0xFF000000,textSize: 24,callback: btnOnClick,),
                widget_button(text: "<--",backColor: 0xFF8ac4d0,textColor: 0xFF000000,textSize: 24,callback: btnOnClick,),
                widget_button(text: "/",backColor: 0xFFf1c4d0,textColor: 0xFF000000,textSize: 24,callback: btnOnClick,)
              ],
            ),

            /*Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                widget_button(text: "1",backColor: 0xFF8ac4d0,textColor: 0xFF000000,textSize: 24,callback: btnOnClick,),
                widget_button(text: "1",backColor: 0xFF8ac4d0,textColor: 0xFF000000,textSize: 24,callback: btnOnClick,),
                widget_button(text: "3",backColor: 0xFF8ac4d0,textColor: 0xFF000000,textSize: 24,callback: btnOnClick,),
                widget_button(text: "+",backColor: 0xFFf1c4d0,textColor: 0xFF000000,textSize: 24,callback: btnOnClick,)
              ],
            ),*/
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                widget_button(text: "1",backColor: 0xFF8ac4d0,textColor: 0xFF000000,textSize: 24,callback: btnOnClick,),
                widget_button(text: "2",backColor: 0xFF8ac4d0,textColor: 0xFF000000,textSize: 24,callback: btnOnClick,),
                widget_button(text: "3",backColor: 0xFF8ac4d0,textColor: 0xFF000000,textSize: 24,callback: btnOnClick,),
                widget_button(text: "+",backColor: 0xFFf1c4d0,textColor: 0xFF000000,textSize: 24,callback: btnOnClick,)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                widget_button(text: "4",backColor: 0xFF8ac4d0,textColor: 0xFF000000,textSize: 24,callback: btnOnClick,),
                widget_button(text: "5",backColor: 0xFF8ac4d0,textColor: 0xFF000000,textSize: 24,callback: btnOnClick,),
                widget_button(text: "6",backColor: 0xFF8ac4d0,textColor: 0xFF000000,textSize: 24,callback: btnOnClick,),
                widget_button(text: "-",backColor: 0xFFf1c4d0,textColor: 0xFF000000,textSize: 24,callback: btnOnClick,)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                widget_button(text: "7",backColor: 0xFF8ac4d0,textColor: 0xFF000000,textSize: 24,callback: btnOnClick,),
                widget_button(text: "8",backColor: 0xFF8ac4d0,textColor: 0xFF000000,textSize: 24,callback: btnOnClick,),
                widget_button(text: "9",backColor: 0xFF8ac4d0,textColor: 0xFF000000,textSize: 24,callback: btnOnClick,),
                widget_button(text: "x",backColor: 0xFFf1c4d0,textColor: 0xFF000000,textSize: 24,callback: btnOnClick,)
              ],
            ),Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                widget_button(text: "0",backColor: 0xFF8ac4d0,textColor: 0xFF000000,textSize: 24,callback: btnOnClick,),
                widget_button(text: "00",backColor: 0xFF8ac4d0,textColor: 0xFF000000,textSize: 24,callback: btnOnClick,),
                widget_button(text: ".",backColor: 0xFF8ac4d0,textColor: 0xFF000000,textSize: 24,callback: btnOnClick,),
                widget_button(text: "=",backColor: 0xFFf1c4d0,textColor: 0xFF000000,textSize: 24,callback: btnOnClick,)
              ],
            ),

          ],
        ),
      ),
    );
  }
}
