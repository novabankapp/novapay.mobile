import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nave_app/app/ui/widgets/slider_layout_view.dart';

class LandingScreen extends StatefulWidget {


  const LandingScreen();
  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
       SafeArea(
           child: Container(
                child: SliderLayoutView(),
              ),
         ),



    );
  }
}
