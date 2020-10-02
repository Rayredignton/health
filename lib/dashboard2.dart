import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
             // Image.network(src),
              Text("Skip"),

            ],
          ),
          SizedBox(height: 40,),
          Center(child: Image.network("https://drive.google.com/file/d/12l8awFXHkifQ2SK2WWk4ootYy69iel6q/view?usp=sharing"),),

      
          SizedBox(height: 50,),
          Center(child: Image.network("https://drive.google.com/file/d/1uQX5vSwqiIu118m_yTfaFdXGA-_htg6X/view?usp=sharing"),),
          Center(child:Text("Carry your Doctor always")),
         SizedBox(height: 60,),
      //    Center(child: Image.network(src),),

            Spacer(),
                 Container(
            color: Hexcolor("#979797"),
            height: MediaQuery.of(context).size.height * 0.001,
            width: MediaQuery.of(context).size.width * 0.4,
          ),





        ],
      ),
    );
  }
}