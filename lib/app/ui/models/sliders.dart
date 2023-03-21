import 'package:flutter/cupertino.dart';
import 'package:nave_app/infrastructure/constants/constants.dart';

class Slider {
  final String sliderImageUrl;
  final String sliderHeading;
  final String sliderSubHeading;

  Slider(
      {required this.sliderImageUrl,
        required this.sliderHeading,
        required this.sliderSubHeading});
}

final headings = [
  Constants.SLIDER_HEADING_1,
  Constants.SLIDER_HEADING_2,
];

final subHeadings = [
  Constants.SLIDER_DESC_1,
  Constants.SLIDER_DESC_2,
];

final images = [
  'assets/svgs/pay.svg',
  'assets/svgs/timely.svg',
];

final sliderArrayList = [
  Slider(
      sliderImageUrl: images[0],
      sliderHeading: headings[0],
      sliderSubHeading: subHeadings[0]),
  Slider(
      sliderImageUrl: images[1],
      sliderHeading: headings[1],
      sliderSubHeading: subHeadings[1]),

];
