
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';



class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height:  MediaQuery.of(context).size.height,
            child: 
         
               
                   Image.network("https://drive.google.com/file/d/1FjHeR69PC0GVaNmzjRZXRWxLX5x70G5P/view?usp=sharing"),
                 
                
              
            ),
          
          Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:400.0),
                  child: Text(
                    "Hello,", 
                    style: TextStyle(
                      color: Hexcolor("#008FAC"),
                      fontFamily: "Poppings-Bold",
                      fontSize: 65,
                      fontWeight: FontWeight.w900
                    ),
                  ),
                ),
                Text(
                "I am Markus", 
                style: TextStyle(
                  color: Hexcolor("#008FAC"),
                  fontFamily: "Poppings-Bold",
                  fontSize: 50,
                  fontWeight: FontWeight.w900
                ),),
                Text("your health assistant", style: TextStyle(
                  color: Hexcolor("#262A2B"),
                  fontFamily: "Poppings-Regular",
                  fontSize: 17,
                ),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:28.0),
                      child: Text("Take a tour?", style: TextStyle(
                  color: Hexcolor("#6C929A"),
                  fontFamily: "Poppings-Regular",
                  fontSize: 17,
                ),),
                    ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:28.0),
                  child: Text("Skip to register?", style: TextStyle(
                    color: Hexcolor("#6C929A"),
                    fontFamily: "Poppings-Regular",
                    fontSize: 17,
                  ),),
                ),
                Spacer(),
                 Container(
            color: Hexcolor("#979797"),
            height: MediaQuery.of(context).size.height * 0.001,
            width: MediaQuery.of(context).size.width * 0.4,
          ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
      
    );
  }
}