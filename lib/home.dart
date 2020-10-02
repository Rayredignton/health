import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Stack(
              children:[
                 Container(
           decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end:Alignment.bottomRight,
                colors: [
                Hexcolor("#01F532"),
                Hexcolor("#003CFF"),
                  
                ],
               // stops: [0.8, 0.96, 0.74, 0.22, 0.85],
               
              ),
            ),
        ),
        Center(
          child: Image.asset("assets/images/logo2.png",
       
          ),
        ),

        Text("Start", style: TextStyle(
          fontFamily: "Poppings-Regular",
          color: Colors.white,
          fontSize: 17
        
        ),),

        Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height * 0.001,
            width: MediaQuery.of(context).size.width * 0.4,
          ),
              ],
      ),
    );
  }
}