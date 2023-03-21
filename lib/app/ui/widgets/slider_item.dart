import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nave_app/app/ui/models/sliders.dart';
import 'package:nave_app/app/ui/widgets/common/rounded_button.dart';
import 'package:nave_app/infrastructure/constants/constants.dart';
import 'package:nave_app/infrastructure/routing/routing.dart';

class SliderItem extends StatelessWidget {
  final int index;
  SliderItem(this.index);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var orientation = MediaQuery.of(context).orientation;
    return size.height > Constants.MINIMUM_HEIGHT || orientation == Orientation.portrait ?
           NormalColumn(index: index, size:size) : HeightOptimizedColumn(index: index, size:size);
  }
}

class HeightOptimizedColumn extends StatelessWidget {
  const HeightOptimizedColumn({
    Key? key,
    required this.index,
    required this.size
  }) : super(key: key);

  final int index;
  final Size size;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[

        Container(
          height: MediaQuery.of(context).size.width * 0.4,
          width: MediaQuery.of(context).size.height * 0.8,
          child: SvgPicture.asset(
              sliderArrayList[index].sliderImageUrl,
              height: size.height * 0.6,
            )
          /*decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(sliderArrayList[index].sliderImageUrl))),*/
        ),

      ],
    );
  }
}


class NormalColumn extends StatelessWidget {
  const NormalColumn({
    Key? key,
    required this.index,
    required this.size

  }) : super(key: key);

  final int index;
  final Size size;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 80.0,
        ),
       Container(
          height: MediaQuery.of(context).size.width * 0.6,
          width: MediaQuery.of(context).size.height * 0.8,
          child: SvgPicture.asset(
            sliderArrayList[index].sliderImageUrl,
            height: size.height ,
            width: size.width * 0.6,
          ),
          /*decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(sliderArrayList[index].sliderImageUrl))),*/
        ),




          Text(
            sliderArrayList[index].sliderHeading,

            style: TextStyle(
              fontFamily: Constants.POPPINS,
              fontWeight: FontWeight.w700,
              fontSize: 20.5,
            ),
          ),

          SizedBox(
            height: 15.0,
          ),

          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                sliderArrayList[index].sliderSubHeading,
                style: TextStyle(
                  fontFamily: Constants.OPEN_SANS,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1.5,
                  fontSize: 12.5,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),

          SizedBox(height: size.height * 0.05),

          RoundedButton(
            text: "Continue",
            press: () {
             //navigate
              Routing.navigateTo(context, "/home-screen");
            },
          ),
      ],
    );
  }
}

