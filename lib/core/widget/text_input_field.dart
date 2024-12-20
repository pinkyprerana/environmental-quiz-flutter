import 'package:flutter/material.dart';
import '../styles/app_colors.dart';
import '../styles/app_text_styles.dart';

class TextInputField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final TextInputType? textInputType;
  final bool? obscureText;
  final Widget? icon;

  const TextInputField({
    super.key,
    this.controller,
    this.hintText,
    this.textInputType,
    this.obscureText,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(
          color: AppColors.borderColor,
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: TextFormField(
          controller: controller,
          obscureText: obscureText ?? false,
          keyboardType: textInputType ?? TextInputType.text,
          decoration: InputDecoration(
            hintText: hintText ?? '',
            hintStyle: AppTextStyles.textStyleFredoka.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            suffixIcon: icon,
            border: InputBorder.none,
          ),
          style: AppTextStyles.textStyleFredoka.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
