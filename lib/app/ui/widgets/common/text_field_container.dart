import 'package:flutter/material.dart';
import 'package:nave_app/infrastructure/constants/colors.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget? child;
  final double borderRadius;
  const TextFieldContainer({
    Key? key,
    this.child,
    this.borderRadius = 29
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: ColorConstants.kPrimaryLightColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: child,
    );
  }
}
