import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nave_app/app/ui/widgets/common/textfield_input.dart';
import 'package:nave_app/infrastructure/constants/colors.dart';

class RoundedInputField extends StatelessWidget {


  final String? hintText;
  final FocusNode? focusNode;
  final IconData icon;
  final ValueChanged<String>? onChanged;
  final bool isPassword;
  final bool isEmail;
  final bool readOnly;
  final String? Function(String?)? validator;
  final Function(String?)? onSaved;
  final Widget? suffixIcon;
  final double borderRadius;
  final bool autoFocus;
  final Function(String?)? onFieldSubmitted;
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final TextInputType?  keyboardType;
  final int? maxLines;
  final void Function()? onTap;

  const RoundedInputField({
    Key? key,
    this.keyboardType = TextInputType.text,
    this.autoFocus = false,
    this.textInputAction = TextInputAction.none,
    this.onFieldSubmitted,
    this.hintText,
    this.focusNode,
    this.icon = Icons.person,
    this.onChanged,
    this.isEmail = false,
    this.isPassword = false,
    this.maxLines = 1,
    this.onSaved,
    this.validator,
    this.borderRadius = 10,
    this.suffixIcon,
    this.controller,
    this.readOnly = false,
    this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      borderRadius: borderRadius,
      child: TextFormField(
        autofocus: autoFocus,
        style: TextStyle(
            color: Colors.white,
            fontSize: 12.sp
        ),
        textInputAction: textInputAction,
        onFieldSubmitted: onFieldSubmitted,
        onChanged: onChanged,
        onTap: onTap,
        focusNode: focusNode,
        readOnly: readOnly,
        cursorColor: ColorConstants.kPrimaryColor,
        controller : controller,
        maxLines: maxLines,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: ColorConstants.kPrimaryColor,
          ),
          hintStyle: const TextStyle(
              color : Colors.black12
          ),
          labelStyle: const TextStyle(
              color: ColorConstants.kPrimaryColor
          ),
          suffixIcon: suffixIcon,
          hintText:hintText,
          labelText: hintText,
          border: InputBorder.none,
        ),
        obscureText: isPassword ? true : false,
        validator: validator,
        onSaved: onSaved,
        keyboardType: keyboardType,
      ),

    );
  }
}
