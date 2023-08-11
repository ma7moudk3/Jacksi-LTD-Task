// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/services.dart';
import 'package:jacksi_task/app/constants/exports.dart';

import '../../app/core/helper_functions.dart';
import '../global_features/theme_manager.dart';

class PrimaryTextField extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final VoidCallback? onTap;
  final Color? cursorColor;
  final String? counterText;
  final Color? ifReadOnlyTextColor;
  final BorderRadius? borderRadius;
  final BorderSide? borderSide;
  final InputBorder? disabledBorder;
  final InputBorder? enabledBorder;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLines;
  final InputBorder? focusedBorder;
  final InputBorder? errorBorder;
  final FocusNode? focusNode;
  final double? fontSize;
  final BoxConstraints? suffixIconConstraints, prefixIconConstraints;
  final double titleFontSize;
  final Function(String)? onFieldSubmitted;
  final bool readOnly;
  final bool? multiLines;
  final bool? isRequired;
  final String labelText;
  final Color? titleColor;
  final FontWeight titleFontWeight;
  final int? maxLength;
  final void Function(String)? onChanged;
  final EdgeInsetsGeometry? contentPadding;
  final TextDirection? textDirection;
  final TextInputAction? textInputAction;
  final FontWeight? fontWeight;
  const PrimaryTextField({
    Key? key,
    required this.hintText,
    required this.controller,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.cursorColor,
    this.textInputAction,
    this.suffixIconConstraints,
    this.inputFormatters,
    this.prefixIconConstraints,
    this.ifReadOnlyTextColor,
    this.textDirection,
    this.prefixIcon,
    this.fontWeight,
    this.maxLines,
    this.borderRadius,
    this.suffixIcon,
    this.counterText,
    this.fontSize,
    this.titleFontSize = 14,
    this.contentPadding,
    this.borderSide,
    this.onTap,
    this.disabledBorder,
    this.enabledBorder,
    this.focusedBorder,
    this.errorBorder,
    this.focusNode,
    this.onFieldSubmitted,
    this.readOnly = false,
    this.multiLines = false,
    required this.labelText,
    this.titleColor,
    this.titleFontWeight = FontWeightManager.medium,
    this.maxLength,
    this.onChanged,
    this.isRequired = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var hintStyle = TextStyle(
      color: ColorManager.grey,
      fontFamily: Get.locale?.languageCode == "ar"
          ? FontConstants.arabicFontFamily
          : detectLang(text: controller?.text ?? "")
              ? FontConstants.englishFontFamily
              : FontConstants.arabicFontFamily,
      fontWeight: FontWeightManager.medium,
      fontSize: 14.sp,
    );
    var errorStyle = TextStyle(
      fontFamily: Get.locale?.languageCode == "ar"
          ? FontConstants.arabicFontFamily
          : detectLang(text: controller?.text ?? "")
              ? FontConstants.englishFontFamily
              : FontConstants.arabicFontFamily,
      color: ColorManager.red,
      fontSize: 12.sp,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            labelText.isNotEmpty
                ? PrimaryText(
                    labelText.tr,
                    color: titleColor ?? ColorManager.black,
                    fontWeight: titleFontWeight,
                    fontSize: titleFontSize.sp,
                  )
                : const SizedBox.shrink(),
            if (isRequired!)
              PrimaryText(
                ' *',
                color: ColorManager.red,
                fontWeight: FontWeightManager.medium,
                fontSize: titleFontSize.sp,
              ),
          ],
        ),
        SizedBox(height: 12.h),
        TextFormField(
          controller: controller,
          inputFormatters: inputFormatters,
          readOnly: readOnly,
          focusNode: focusNode,
          textInputAction: textInputAction,
          maxLength: maxLength,
          maxLines: multiLines! ? (maxLines ?? 10) : 1,
          cursorColor: cursorColor ??
              (isDarkMoodEnabled()
                  ? ColorManager.darkPrimary
                  : ColorManager.fontColor),
          style: TextStyle(
            color: isDarkMoodEnabled()
                ? Colors.white
                : ifReadOnlyTextColor ?? ColorManager.fontColor,
            fontSize: fontSize,
            fontWeight: fontWeight ?? FontWeightManager.regular,
            fontFamily: detectLang(text: controller?.text ?? "")
                ? FontConstants.englishFontFamily
                : FontConstants.arabicFontFamily,
          ),
          textDirection: textDirection,
          keyboardType: keyboardType,
          onTap: onTap ?? () {},
          onChanged: onChanged,
          onFieldSubmitted: onFieldSubmitted ?? (v) {},
          decoration: InputDecoration(
            disabledBorder: disabledBorder,
            enabledBorder: enabledBorder ??
                OutlineInputBorder(
                  borderSide: borderSide ??
                      BorderSide(color: ColorManager.dividerColor2),
                  borderRadius: borderRadius ??
                      const BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                ),
            focusedBorder: focusedBorder ??
                OutlineInputBorder(
                  borderSide:
                      borderSide ?? BorderSide(color: ColorManager.primary),
                  borderRadius: borderRadius ??
                      const BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                ),
            errorBorder: errorBorder,
            prefixIcon: prefixIcon,
            prefixIconConstraints: prefixIconConstraints,
            suffixIcon: suffixIcon,
            suffixIconConstraints: suffixIconConstraints,
            focusColor: ColorManager.primary,
            errorMaxLines: 2,
            fillColor: isDarkMoodEnabled()
                ? ColorManager.darkAccent
                : ColorManager.white,
            filled: true,
            border: isDarkMoodEnabled()
                ? const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  )
                : OutlineInputBorder(
                    borderRadius: borderRadius ?? BorderRadius.circular(10),
                    borderSide: borderSide ??
                        BorderSide(color: ColorManager.dividerColor2)),
            hoverColor: ColorManager.primary,
            errorStyle: errorStyle,
            counterText: counterText,
            hintText: hintText!.isNotEmpty ? hintText!.tr : '',
            hintStyle: hintStyle,
            contentPadding: contentPadding ??
                EdgeInsets.symmetric(
                  horizontal: 15.w,
                  vertical: 16.h,
                ),
          ),
          textAlign: contentPadding == EdgeInsets.zero
              ? TextAlign.center
              : ((controller?.text ?? "").isEmpty ||
                          DateTime.tryParse(controller?.text ?? "") != null
                      ? Get.locale?.languageCode != "ar"
                      : detectLang(text: controller?.text ?? ""))
                  ? TextAlign.left
                  : TextAlign.right,
          validator: validator ??
              (isRequired == false
                  ? (String? value) {
                      return null;
                    }
                  : (v) {
                      if (v!.isEmpty) {
                        return 'required_field'.tr;
                      }
                      return null;
                    }),
        ),
      ],
    );
  }
}
