import 'package:flutter/material.dart';
import 'package:nave_app/app/ui/widgets/common/text_field_container.dart';
import 'package:nave_app/infrastructure/constants/colors.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String>? onChanged;
  const RoundedPasswordField({
    Key? key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: ColorConstants.kPrimaryColor,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: ColorConstants.kPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: ColorConstants.kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
