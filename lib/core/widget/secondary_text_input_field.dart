import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/assets.dart';
import '../styles/app_colors.dart';
import '../styles/app_text_styles.dart';

class SecondaryTextInputField extends StatefulWidget {
  final TextEditingController controller;
  final double? height;
  final Color? color;
  final String? hintText;
  final int? maxLength;
  final TextInputType? keyboardType;
  final String? prefixIcon;
  final String? Function(String?)? onValidate;
  final bool isMultiline;
  final bool? enabled;
  final void Function(String)? onChanged;
  final Widget? suffixWidget;
  final List<TextInputFormatter>? inputFormatters;
  final bool? obscure;
  final String? labelText;
  final String? hintWithoutEnter;
  final TextStyle? hintStyle;
  final Function(String)? onSearchPressed;
  final VoidCallback? onCompleteEditingCallback;
  const SecondaryTextInputField(
      {super.key,
      required this.controller,
      this.height,
      this.color,
      this.hintText,
      this.keyboardType,
      this.maxLength,
      this.prefixIcon,
      this.onValidate,
      this.suffixWidget,
      this.inputFormatters,
      this.isMultiline = false,
      this.enabled = true,
      this.onChanged,
      this.obscure,
      this.labelText,
      this.hintWithoutEnter,
      this.hintStyle,
      this.onSearchPressed,
      this.onCompleteEditingCallback});

  @override
  State<SecondaryTextInputField> createState() =>
      _SecondaryTextInputFieldState();
}

class _SecondaryTextInputFieldState extends State<SecondaryTextInputField> {
  Color iconColor = AppColors.colorGrey2;
  bool visiblePassword = false;

  void setVisiblePassword() {
    setState(() {
      if (visiblePassword == true) {
        visiblePassword = false;
      } else {
        visiblePassword = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var inputBorder = OutlineInputBorder(
        borderRadius: BorderRadius.circular(20), borderSide: BorderSide.none);
    return Container(
      height: widget.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.colorWhite,
      ),
      // padding: const EdgeInsets.only(top: 10, bottom: 5),
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (widget.labelText != null || widget.hintText != null)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        widget.labelText ?? widget.hintText ?? '',
                        style: AppTextStyles.textStyleFredokaRegular.copyWith(
                          color: AppColors.colorGrey,
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                  TextFormField(
                    scrollPadding: EdgeInsets.only(
                        bottom:
                            MediaQuery.of(context).viewInsets.bottom + 13 * 4),
                    inputFormatters: widget.inputFormatters,
                    onChanged: widget.onChanged,
                    enabled: widget.enabled,
                    controller: widget.controller,
                    autocorrect: false,
                    enableSuggestions: false,
                    maxLines: widget.isMultiline ? 7 : 1,
                    maxLength: (widget.maxLength == null)
                        ? widget.isMultiline
                            ? 100
                            : null
                        : widget.maxLength,
                    obscureText: widget.obscure ??
                            widget.keyboardType == TextInputType.visiblePassword
                        ? !visiblePassword
                        : false,
                    style: AppTextStyles.textStyleFredokaRegular.copyWith(
                      color: AppColors.colorBlack1,
                      fontSize: 18.sp,
                    ),
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 24,
                      ),
                      filled: true,
                      fillColor: AppColors.colorWhite,
                      errorBorder: inputBorder,
                      enabledBorder: inputBorder,
                      disabledBorder: inputBorder,
                      focusedErrorBorder: inputBorder,
                      border: inputBorder,
                      focusedBorder: inputBorder,
                      counterText: '',
                      prefixIcon: (widget.prefixIcon == null
                          ? null
                          : Padding(
                              padding:
                                  const EdgeInsets.only(right: 10, left: 20),
                              child: SizedBox(
                                height: 20,
                                width: 20,
                                child: Image.asset(
                                  widget.prefixIcon ?? '',
                                  color: iconColor,
                                ),
                              ),
                            )),

                      suffixIcon: IconButton(
                        onPressed: () {
                          if (widget.onSearchPressed != null) {
                            widget.onSearchPressed!(widget.controller.text);
                          }
                        },

                        icon: Image.asset(
                            Assets.searchIcon,
                            scale: 2,
                          ),
                      ),
                      // hintText: 'Type Here',
                      hintText:
                          widget.hintWithoutEnter ?? 'Enter ${widget.hintText}',
                      hintStyle: widget.hintStyle ??
                          Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(color: AppColors.greyText),
                    ),
                    keyboardType: widget.keyboardType ?? TextInputType.text,
                    validator: widget.onValidate,
                    onEditingComplete: () => widget.onCompleteEditingCallback?.call(),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 16),
              child: widget.suffixWidget ??
                  (widget.keyboardType == TextInputType.visiblePassword
                      ? InkWell(
                          onTap: () {
                            setVisiblePassword();
                          },
                          child: Center(
                            child: Image.asset(
                              !visiblePassword
                                  ? 'Assets.passwordHide'
                                  : 'Assets.passwordVisible',
                              color: iconColor,
                            ),
                          ),
                        )
                      : null),
            )
          ],
        ),
      ),
    );
  }
}
