import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login.dart';

class signup extends StatefulWidget {
  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {

  TextEditingController emailControler = TextEditingController();
  TextEditingController passControler = TextEditingController();
  TextEditingController phoneControler = TextEditingController();

  String user_name = '0';
  var test = '';

  @override
  void initState() {
    // TODO: implement initState
    // languagevalueLoadSharedPre();
    //setuser_name();
    this.user_name = user_name;
    getString();
  }

  late DateTime _dateTime;

  getDate() async{
    DateTime? date = await showDatePicker(
        context: context,
        initialDate: DateTime(DateTime.now().year),
        firstDate: DateTime(DateTime.now().year-20),
        lastDate: DateTime(DateTime.now().year+2)
    );
    setState(() {
      _dateTime = date!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 0.0,bottom: 20),
              child: Center(
                child: Container(
                    height: 100,
                    /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                    child: Image.network(
                        'https://storage.googleapis.com/cms-storage-bucket/70760bf1e88b184bb1bc.png')),
              ),
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: emailControler,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter valid email id as abc@gmail.com'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 15),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: passControler,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
              ),
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: phoneControler,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Phone',
                    hintText: '01xxxxxxxxx'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 15),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: passControler,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Country',
                    hintText: 'Enter secure country'),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {
                  Fluttertoast.showToast(
                      msg: emailControler.text,
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0);

                  setuser_name();
                   Navigator.push(
                      context, MaterialPageRoute(builder: (_) => login()));
                },
                child: Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {
                  getDate();
                },
                child: Text(
                  'Date',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: 130,
            ),
            Text("তারিখ : ${_dateTime.year}-"
                "${_dateTime.month}-"
                "${_dateTime.day}",style: TextStyle(fontSize: 16),),
            SizedBox(
              height: 30,
            ),
            InkWell(
              child: Text('I have account! back to login'),
              onTap: () {
                //saveText;
                Fluttertoast.showToast(
                    msg: emailControler.text,
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.SNACKBAR,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0);
              },
            ),
            SizedBox(
              height: 130,
            ),
          ],
        ),
      ),
    );
  }

  /*Future<void> languagevalueLoadSharedPre() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
       //languagevalue = pref.setString('email','1') ;
       //languagevalue = pref.setString("user_name", "whatEver user_name");


     //  return pref.setString("user_name", emailControler.text);

    });
  }

  saveText() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString('email', emailControler.text);
  }

  getString() async {
    final prefs = await SharedPreferences.getInstance();
    test = prefs.getString("email") ?? "null";

    return test;
  }*/

  Future<void> setuser_name() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString("user_name", emailControler.text);
    prefs.setString('user_password', passControler.text);
  }

  Future<String> getString() async {
    final prefs = await SharedPreferences.getInstance();
    user_name = prefs.getString("user_name") ?? "null";

    return user_name;
  }
}
