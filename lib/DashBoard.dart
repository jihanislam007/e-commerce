import 'package:e_commerce/Auth/login.dart';
import 'package:e_commerce/Auth/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';
import 'package:google_fonts/google_fonts.dart';

import 'calculator/calculator.dart';

class DashBoard extends StatefulWidget {
  late String user = '', pass = '', a = '';

  DashBoard(String user, pass) {
    this.user = user;
    this.pass = pass;
  }

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  final List<String> letters = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmHgoKWXe-vJZ1CBdlnDF-LaLmbVmCbZmdrQ&usqp=CAU",
    "http://4.bp.blogspot.com/-8dNjFZKYTuo/TeUCdMRy3lI/AAAAAAAABI0/wmTKQnnGUsk/s1600/Animated+flag+of+Bangladesh+flag+animation+gif.gif",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmHgoKWXe-vJZ1CBdlnDF-LaLmbVmCbZmdrQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmHgoKWXe-vJZ1CBdlnDF-LaLmbVmCbZmdrQ&usqp=CAU",
    "http://4.bp.blogspot.com/-8dNjFZKYTuo/TeUCdMRy3lI/AAAAAAAABI0/wmTKQnnGUsk/s1600/Animated+flag+of+Bangladesh+flag+animation+gif.gif",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmHgoKWXe-vJZ1CBdlnDF-LaLmbVmCbZmdrQ&usqp=CAU",
  ];

  //GlobalKey<CarouselSliderState> _sliderKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DashBoard"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 200,
                color: Color(0xFF000000),
                child: CarouselSlider.builder(
                    autoSliderDelay: Duration(seconds: 5),
                    enableAutoSlider: true,
                    unlimitedMode: true,
                    slideBuilder: (index) {
                      return Container(
                          child: Image.network(
                        letters[index],
                        fit: BoxFit.fill,
                      )
                          //Center(child: Text(letters[index], style: GoogleFonts.rubik(textStyle: TextStyle(color: Colors.white, fontSize: 24)),)),
                          );
                    },
                    slideTransform: CubeTransform(),
                    slideIndicator: CircularSlideIndicator(
                      padding: EdgeInsets.only(bottom: 32),
                    ),
                    itemCount: letters.length),
              ),

              /*Flexible(
                  flex: 3,
                  child: Column(
                    children: [
                      DefaultTabController(
                          length: 2,
                          child: Column(
                             children: [
                               AppBar(
                                 bottom: TabBar(
                                   tabs: [
                                     Tab(
                                       icon: Icon(Icons.account_balance_sharp),
                                       text: 'Balance',
                                     ),
                                     Tab(
                                       icon: Icon(Icons.wrong_location_rounded),
                                       text: 'Location',
                                     )
                                   ],
                                 ),
                               ),
                               TabBarView(
                                 children: [login(), signup()],
                               ),
                             ],
                          )),
                    ],
                  ))*/

              Container(
                height: 400,
                child: DefaultTabController(
                    length: 2,
                 //   initialIndex: 0,
                    child: Scaffold(
                      appBar: AppBar(
                        bottom: TabBar(
                          tabs: [
                            Tab(
                              icon: Icon(Icons.account_balance_sharp),
                              text: 'Balance',
                            ),
                            Tab(
                              icon: Icon(Icons.wrong_location_rounded),
                              text: 'Location',
                            )
                          ],
                        ),
                      ),
                      body: TabBarView(
                        children: [
                          /*Container(
                            height: 300,
                            color: Colors.amberAccent,
                          ),*/
                          login(),
                          /*Container(
                            height: 300,
                            color: Colors.teal,
                          ),*/
                          signup()
                        ],
                      ),
                    )),
              )
              // the tab bar with two items
            ],
          ),
        ),
      ),
    );
  }
}
