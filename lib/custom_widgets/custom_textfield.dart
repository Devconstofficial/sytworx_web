import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_colors.dart';
import '../utils/app_styles.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String hintText;
  final bool isObscure;
  // final double height;
  final double width;
  final Color borderColor;
  final Color hintColor;
  final double hintSize;
  final double textSize;
  final TextInputType textInputType;
  final bool readOnly;
  final Widget? suffix;
  final Widget? prefix;
  final Widget? suffixText;
  final Function(String)? onChanged;
  final Function()? onTap;
  final int maxLines;
  final List<TextInputFormatter>? inputFormatters;
  final double borderRadius;
  final bool isFilled;
  final Color fillColor;
  final Color focusedFillColor;
  final EdgeInsets contentPadding;

  CustomTextField({
    super.key,
    this.controller,
    this.focusNode,
    required this.hintText,
    this.isObscure = false,
    this.hintSize = 16,
    this.textSize = 14,
    // this.height = 68,
    this.contentPadding = const EdgeInsets.symmetric(vertical: 12,horizontal: 16),
    this.width = double.infinity,
    this.borderColor = kGreyColor3,
    this.fillColor = kWhiteColor,
    this.focusedFillColor = kWhiteColor,
    this.isFilled = false,
    this.hintColor = kGreyColor,
    this.textInputType = TextInputType.text,
    this.readOnly = false,
    this.suffix,
    this.suffixText,
    this.prefix,
    this.onChanged,
    this.onTap,
    this.maxLines = 1,
    this.inputFormatters,
    this.borderRadius = 8,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {

  late FocusNode _focusNode;
  bool _hasFocus = false;

  @override
  void initState() {
    super.initState();
    _focusNode = widget.focusNode ?? FocusNode();
    _focusNode.addListener(_handleFocusChange);
  }

  void _handleFocusChange() {
    setState(() {
      _hasFocus = _focusNode.hasFocus;
    });
  }

  @override
  void dispose() {
    if (widget.focusNode == null) {
      _focusNode.dispose();
    } else {
      _focusNode.removeListener(_handleFocusChange);
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      keyboardType: widget.textInputType,
      focusNode: _focusNode,
      obscureText: widget.isObscure,
      readOnly: widget.readOnly,
      onChanged: widget.onChanged,
      inputFormatters: widget.inputFormatters,
      onTap: widget.onTap,
      maxLines: widget.maxLines,
      decoration: InputDecoration(
        contentPadding: widget.contentPadding,
        hintText: widget.hintText,
        hintStyle: AppStyles.regularGilroyTextStyle().copyWith(
          fontSize: widget.hintSize,
          fontWeight: FontWeight.w400,
          color: widget.hintColor,
        ),
        suffixIcon: widget.suffix,
        filled: widget.isFilled,
        fillColor: _hasFocus ? widget.focusedFillColor : widget.fillColor,
        prefixIcon: widget.prefix,
        suffix: widget.suffixText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          borderSide: BorderSide(color: widget.borderColor, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          borderSide: BorderSide(color: kLightBlueColor, width: 2),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          borderSide: BorderSide(color: kGreyColor3, width: 1),
        ),
      ),
      style: AppStyles.regularGilroyTextStyle().copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: kBlackTextColor,
      ),
    );
  }
}
