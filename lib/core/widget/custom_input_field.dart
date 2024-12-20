import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:green_quest_app/core/constants/assets.dart';
import 'package:green_quest_app/core/styles/app_colors.dart';

class CustomInputField extends StatefulWidget {
  final String hintText;
  final double inputFieldHeight;
  final bool isPassword;
  final TextInputType textInputType;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final VoidCallback? onCompleteEditingCallback;
  final int? maxLength;

  const CustomInputField({
    this.focusNode,
    this.onCompleteEditingCallback,
    required this.hintText,
    this.inputFieldHeight = 56,
    this.isPassword = false,
    this.textInputType = TextInputType.text,
    this.controller,
    super.key,
    this.maxLength,
  });

  @override
  State<CustomInputField> createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {
  bool _isPasswordVisible = false;

  void _togglePasswordVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.inputFieldHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(11, 90, 17, 0.06),
            offset: Offset(0, 19),
            blurRadius: 35,
            spreadRadius: 0,
          ),
        ],
      ),
      child: TextFormField(
        maxLength: widget.maxLength,
        focusNode: widget.focusNode,
        controller: widget.controller,
        style: Theme.of(context).textTheme.bodySmall,
        obscureText: widget.isPassword && !_isPasswordVisible,
        inputFormatters: widget.textInputType == TextInputType.phone
            ? [LengthLimitingTextInputFormatter(16)]
            : [],
        // textInputAction: TextInputAction.next,
        onEditingComplete: () => widget.onCompleteEditingCallback?.call(),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(20),
          counterText: '',
          suffixIcon: widget.isPassword
              ? ExcludeFocus(
                  child: IconButton(
                    onPressed: _togglePasswordVisibility,
                    icon: _isPasswordVisible
                        ? Image.asset(
                            Assets.eyeOpen,
                            width: 25,
                          )
                        : SvgPicture.asset('assets/images/others/img_eye.svg'),
                  ),
                )
              : const SizedBox.shrink(),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColors.borderColor,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColors.borderColor,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColors.borderColor,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          hintText: widget.hintText,
          hintStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontFamily: 'Varela Round',
                color: AppColors.greyText,
              ),
        ),
        keyboardType: widget.textInputType,
      ),
    );
  }
}
