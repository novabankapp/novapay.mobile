import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nave_app/app/ui/models/sliders.dart';
import 'package:nave_app/app/ui/widgets/common/rounded_button.dart';
import 'package:nave_app/app/ui/widgets/slider_dot.dart';
import 'package:nave_app/app/ui/widgets/slider_item.dart';
import 'package:nave_app/infrastructure/constants/colors.dart';
import 'package:nave_app/infrastructure/constants/constants.dart';
import 'package:nave_app/infrastructure/routing/routing.dart';

class SliderLayoutView extends StatefulWidget {
  @override
  _SliderLayoutViewState createState() => _SliderLayoutViewState();
}

class _SliderLayoutViewState extends State<SliderLayoutView> {

  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
    });
  }
  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    var size = MediaQuery.of(context).size;
    print(size.height);

    return Container(
      child: size.height > 500 || orientation == Orientation.portrait ?
            _buildSlider(context) :
            _buildForPortraitSmall(context),
    );

  }
  Padding _buildForPortraitSmall( BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child:  Stack(
        alignment: AlignmentDirectional.topCenter,
        children: <Widget>[
          Container(
            alignment: AlignmentDirectional.topCenter,
            margin: EdgeInsets.only(top: 10.0),
            child: const Text(Constants.TITLE,
                textAlign: TextAlign.center,
                style: TextStyle( color : ColorConstants.kPrimaryColor,
                    fontWeight: FontWeight.bold, fontSize: 32)),
          ),
          Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [

                      PageView.builder(
                        scrollDirection: Axis.horizontal,
                        controller: _pageController,
                        onPageChanged: _onPageChanged,
                        itemCount: sliderArrayList.length,
                        itemBuilder: (ctx, i) => SliderItem(i),
                      ),



              ],

          ),
           Container(
             alignment: AlignmentDirectional.bottomEnd,
            child: RoundedButton(

              text: "Continue",
              press: () {
                //navigate
                Routing.navigateTo(context, "/registration-screen");
              },
            ),
          ),
        ],
      )
    );
  }
  Padding _buildSlider( BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10.0),
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[

                Container(
                  alignment: AlignmentDirectional.topCenter,
                  margin: EdgeInsets.only(top: 10.0),
                  child: Text(Constants.TITLE,
                      textAlign: TextAlign.center,
                      style: TextStyle( color : ColorConstants.kPrimaryColor,
                          fontWeight: FontWeight.bold, fontSize: 32)),
                ),
                PageView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: _pageController,
                  onPageChanged: _onPageChanged,
                  itemCount: sliderArrayList.length,
                  itemBuilder: (ctx, i) => SliderItem(i),
                ),



            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: <Widget>[
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                      padding: EdgeInsets.only(right: 15.0, bottom: 15.0),
                      child:_currentPage+1 != (sliderArrayList.length) ?
                        GestureDetector(
                        onTap: () {

                          _pageController.nextPage(duration: Duration(milliseconds: 100),
                              curve: Curves.easeIn);
                        },

                        child : Text(
                          Constants.NEXT,
                          style: TextStyle(
                            fontFamily: Constants.OPEN_SANS,
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0,
                          ),
                        ),
                      ) : GestureDetector(
                        onTap: () {
                         //navigate
                          Routing.navigateTo(context, "/registration-screen");
                        },

                        child : Text(
                          Constants.CONTINUE,
                          style: TextStyle(
                            fontFamily: Constants.OPEN_SANS,
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0,
                          ),
                        ),
                      )
                  ),
                ),
                if(_currentPage > 0)
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 15.0, bottom: 15.0),
                    child: GestureDetector(
                      onTap: (){
                        _pageController.previousPage(duration: Duration(milliseconds: 100),
                            curve: Curves.easeIn);
                      },
                      child : Text(
                      "Back",
                      style: TextStyle(
                        fontFamily: Constants.OPEN_SANS,
                        fontWeight: FontWeight.w600,
                        fontSize: 14.0,
                        color: Theme.of(context).accentColor
                      ),
                      ),
                    )
                  ),
                ),

                Container(
                  alignment: AlignmentDirectional.bottomCenter,
                  margin: EdgeInsets.only(bottom: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      for (int i = 0; i < sliderArrayList.length; i++)
                        if (i == _currentPage)
                          SliderDot(true)
                        else
                          SliderDot(false)
                    ],
                  ),
                ),

              ],
            ),

          ],
        ));
  }
}
