import 'package:flutter/widgets.dart';
import 'package:nave_app/infrastructure/constants/colors.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget? child;
  final double borderRadius;
  final double? width;
  final Color? background;
  const TextFieldContainer({
    Key? key,
    this.child,
    this.borderRadius = 29,
    this.width,
    this.background
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: width ?? size.width * 0.8,
      decoration: BoxDecoration(
        color: background ?? ColorConstants.kPrimaryLightColor.withOpacity(0.3),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: child,
    );
  }
}