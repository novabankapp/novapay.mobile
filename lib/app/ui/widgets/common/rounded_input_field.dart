import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nave_app/app/ui/widgets/common/textfield_input.dart';
import 'package:nave_app/infrastructure/constants/colors.dart';

class RoundedInputField extends StatelessWidget {


  final String? hintText;
  final String? labelText;
  final FocusNode? focusNode;
  final Icon? icon;
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
  final double? width;
  final Color? background;
  final List<TextInputFormatter>? inputFormatters;
  final void Function()? onTap;
  final String? initialValue;

  const RoundedInputField({
    Key? key,
    this.keyboardType = TextInputType.text,
    this.autoFocus = false,
    this.textInputAction = TextInputAction.none,
    this.onFieldSubmitted,
    this.hintText,
    this.labelText,
    this.inputFormatters,
    this.initialValue,
    this.focusNode,
    this.icon,
    this.onChanged,
    this.isEmail = false,
    this.isPassword = false,
    this.maxLines = 1,
    this.width,
    this.onSaved,
    this.validator,
    this.borderRadius = 10,
    this.suffixIcon,
    this.controller,
    this.readOnly = false,
    this.onTap,
    this.background
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      width: width,
      background: background,
      borderRadius: borderRadius,
      child: TextFormField(
        initialValue: initialValue,
        autofocus: autoFocus,
        inputFormatters: inputFormatters,
        style: TextStyle(
            color: ColorConstants.kBlackColor,
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
          icon: icon,
          hintStyle: const TextStyle(
              color : ColorConstants.kBlackColor
          ),
          labelStyle: const TextStyle(
              color: ColorConstants.kPrimaryColor
          ),
          suffixIcon: suffixIcon,
          hintText:hintText,
          labelText: labelText,
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
