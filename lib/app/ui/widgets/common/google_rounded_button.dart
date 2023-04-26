import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nave_app/infrastructure/constants/colors.dart';

class GoogleRoundedButton extends StatelessWidget {
  final String? text;
  final VoidCallback? press;
  final Color color, textColor, hoverColor;
  const GoogleRoundedButton({
    Key? key,
    this.text,
    required this.press,
    this.color = ColorConstants.kPrimaryColor,
    this.hoverColor = ColorConstants.kPrimaryLightColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      height: 50,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: SignInButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          text: text,
          Buttons.Google,
          onPressed: press != null ? press! : (){},
        ),
      ),
    );
  }
}
