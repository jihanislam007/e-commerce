import 'package:e_commerce/Auth/signup.dart';
import 'package:e_commerce/DashBoard.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {

  TextEditingController emailControler = TextEditingController();
  TextEditingController passControler = TextEditingController();

  String user_name='--';
  String password='--';

  //late String user = 'mobile apps';
  //late String pass = 'sherpur';

  @override
  void initState() {
    // TODO: implement initState
    this.user_name = user_name;
    this.password = password;
    getString();
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
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                    width: 200,
                    height: 150,
                    /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                    child: Image.network(
                        'https://storage.googleapis.com/cms-storage-bucket/70760bf1e88b184bb1bc.png')),
              ),
            ),

            Container(
              height: 40,
              width: 200,
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Color(0xFFDF1313))
              ),
              child: Text('user :'+user_name+"\n"+'pass :'+password),
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
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
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
            FlatButton(
              onPressed: () {
                //TODO FORGOT PASSWORD SCREEN GOES HERE
              },
              child: Text(
                'Forgot Password',
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {
                  if (user_name == emailControler.text &&
                      password == passControler.text) {
                    Fluttertoast.showToast(
                        msg: 'Login successful',
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.SNACKBAR,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => DashBoard(
                                emailControler.text, passControler.text)));
                  } else {
                    Fluttertoast.showToast(
                        msg: 'Wrong ID Password',
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.SNACKBAR,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  }
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            InkWell(
              child: Text('New User? Create Account'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => signup()));
              },
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }

 getString() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() {
      user_name = prefs.getString("user_name") ?? "null";
      password = prefs.getString("user_password") ?? "null";
    });

    //return user_name;
  }
}
