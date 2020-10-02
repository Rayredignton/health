import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:r/hosptalService.dart';
import 'package:r/login.dart';

import 'package:http/http.dart' as http;
class Workspace extends StatefulWidget {
  @override
  _WorkspaceState createState() => _WorkspaceState();
}

class _WorkspaceState extends State<Workspace> {
  String messsage = '';
  TextEditingController urlControl= TextEditingController();



  bool _isLoading = false;
  Verify(String url) async {
    String url = "https://markus-dev.herokuapp.com/api/auth/workspace";
    //SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Map body = {"url": url};
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
            MaterialPageRoute(builder: (BuildContext context) => Login()),
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
      body:  Center(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Text(
                    "Verify WorkSpace", 
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
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextField(
                          decoration: InputDecoration(hintText: "Url"),
                          controller: urlControl,
                        ),
                      ),
                     
                    ],
                  ),
                ),
              ),
          Container(
            decoration: BoxDecoration(
                                 color: Colors.pink,
                               borderRadius: BorderRadius.all(Radius.circular(8))),
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.94,
     
              child: FlatButton(
                   onPressed: urlControl.text == ""
                             
                          ? null
                          : () {
                              setState(() {
                                _isLoading = true;
                              });
                              Verify(urlControl.text);
                            },
                  child: Text(
                    "Confirm",
                    style: TextStyle(
                      color: Hexcolor("#C0CCDA"),
                      fontSize: 20,
                    ),
                  ))),
          Text(messsage),
        ],
      ),
        )
      )
    );
  }
}
