
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'assets.dart';


class Onboard extends StatefulWidget {
  @override
  _OnboardState createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height:  MediaQuery.of(context).size.height,
            child: DecoratedBox(
              decoration:  BoxDecoration(
                image:  DecorationImage(
                  image: AssetImage(Assets.background),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Row(children: [
            SvgPicture.asset(Assets.backButton),
          ],)
        ],
      ),

      
    );
  }
}