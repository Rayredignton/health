import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';
import 'package:r/HomePage.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailControl = TextEditingController();
  TextEditingController passControl = TextEditingController();
  TextEditingController hospControl = TextEditingController();

  bool _isLoading = false;
  logIn(String email, String pass, String hospital) async {
    String url = "https://markus-dev.herokuapp.com/api/auth/login";
    //SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Map body = {"email": email, "password": pass, "hospital": hospital};
    var jsonResponse;
    var res = await http.post(url, body: body);
    if (res.statusCode == 200) {
      jsonResponse = json.decode(res.body);
      print("Response Status: ${res.statusCode}");

      print("Response Status: ${res.body}");
      if (jsonResponse != null) {
        setState(() {
          _isLoading = false;
        });
        //sharedPreferences.setString("token", jsonResponse["token"]);

        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (BuildContext context) => HomePage()),
            (Route<dynamic> route) => false);
      }
    } else {
      setState(() {
        _isLoading = false;
      });
      print("Response status: ${res.body}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Text(
                    "Login", 
                    style: TextStyle(
                      color: Hexcolor("#008FAC"),
                      fontFamily: "Poppings-Bold",
                      fontSize: 45,
                      fontWeight: FontWeight.w900
                    ),
                  ),
              SizedBox(
                height: 20,
              ),
              Card(
                elevation: 3.0,
                child: Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextField(
                          decoration: InputDecoration(hintText: "Email"),
                          controller: emailControl,
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextField(
                          decoration: InputDecoration(hintText: "Password"),
                          controller: passControl,
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextField(
                          decoration: InputDecoration(hintText: "Hospital"),
                          controller: hospControl,
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                 decoration: BoxDecoration(
                                 color: Colors.pink,
                               borderRadius: BorderRadius.all(Radius.circular(8))),
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.94,
                  
                  child: FlatButton(
                      onPressed: emailControl.text == "" ||
                              passControl.text == "" ||
                              hospControl.text == ""
                          ? null
                          : () {
                              setState(() {
                                _isLoading = true;
                              });
                              logIn(emailControl.text, passControl.text,
                                  hospControl.text);
                            },
                      child: Text(
                        "Confirm",
                        style: TextStyle(
                          color: Hexcolor("#C0CCDA"),
                          fontSize: 20,
                        ),
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
