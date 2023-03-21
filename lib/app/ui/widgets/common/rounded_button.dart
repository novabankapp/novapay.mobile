import 'package:flutter/material.dart';
import 'package:nave_app/infrastructure/constants/colors.dart';

class RoundedButton extends StatelessWidget {
  final String? text;
  final Function()? press;
  final Color color, textColor, hoverColor;
  const RoundedButton({
    Key? key,
    this.text,
    this.press,
    this.color = ColorConstants.kPrimaryColor,
    this.hoverColor = ColorConstants.kPrimaryLightColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: TextButton(
          style : TextButton.styleFrom(
             primary: hoverColor,
             backgroundColor: color,
             padding : EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          ),
          onPressed: press,
          child: Text(
            text!,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
