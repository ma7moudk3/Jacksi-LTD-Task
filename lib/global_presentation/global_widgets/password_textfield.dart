import 'package:jacksi_task/app/constants/exports.dart';

import '../global_features/theme_manager.dart';

class PasswordTextField extends StatefulWidget {
  final String? hintText;
  final String? labelText;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final Function(String)? onFieldSubmitted;
  final TextInputType keyboardType;
  final Color? cursorColor;
  final InputBorder? disabledBorder;
  final InputBorder? enabledBorder;
  final BorderRadius? borderRadius;
  final InputBorder? focusedBorder;
  final InputBorder? errorBorder;
  final BorderSide? borderSide;
  final bool isRequired;
  final int? maxLength;
  final Widget? prefixIcon;
  final FocusNode? focusNode;
  final double? titleFontSize;
  final Color? titleColor;
  final FontWeight? titleFontWeight;
  final double? titleSpacing;

  const PasswordTextField(
      {Key? key,
      required this.hintText,
      required this.controller,
      this.validator,
      this.titleColor,
      this.onFieldSubmitted,
      this.labelText,
      this.titleSpacing,
      this.borderRadius,
      this.isRequired = false,
      this.prefixIcon,
      this.titleFontSize,
      this.titleFontWeight,
      this.cursorColor,
      this.borderSide,
      this.focusNode,
      this.disabledBorder,
      this.enabledBorder,
      this.focusedBorder,
      this.errorBorder,
      this.keyboardType = TextInputType.visiblePassword,
      this.maxLength})
      : super(key: key);

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool visiblePassword = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /*
                    decoration: BoxDecoration(
              borderRadius: appType == AppType.customer
                  ? const BorderRadius.all(Radius.circular(50))
                  : const BorderRadius.all(Radius.circular(8.0)),
              color: isDarkMoodEnabled()
                  ? ColorManager.darkAccent
                  : ColorManager.white,

        */
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              widget.labelText?.tr ?? "",
              style: TextStyle(
                color: widget.titleColor ?? ColorManager.grey,
                fontFamily: Get.locale?.languageCode == "ar"
                    ? FontConstants.arabicFontFamily
                    : FontConstants.englishFontFamily,
                fontWeight: widget.titleFontWeight ?? FontWeightManager.medium,
                fontSize: 14.sp,
              ),
            ),
            if (widget.isRequired)
              Text(
                ' *',
                style: TextStyle(
                  color: ColorManager.red,
                  fontFamily: Get.locale?.languageCode == "ar"
                      ? FontConstants.arabicFontFamily
                      : FontConstants.englishFontFamily,
                  fontWeight: FontWeightManager.medium,
                  fontSize: 14.sp,
                ),
              ),
          ],
        ),
        const SizedBox(height: 12),
        TextFormField(
          controller: widget.controller,
          focusNode: widget.focusNode,
          maxLength: widget.maxLength,
          cursorColor: widget.cursorColor ??
              (isDarkMoodEnabled()
                  ? ColorManager.darkPrimary
                  : ColorManager.fontColor),
          style: TextStyle(
              color:
                  isDarkMoodEnabled() ? Colors.white : ColorManager.fontColor),
          keyboardType: widget.keyboardType,
          obscureText: !visiblePassword,
          onFieldSubmitted: widget.onFieldSubmitted ?? (v) {},
          decoration: InputDecoration(
            disabledBorder: widget.disabledBorder,
            enabledBorder: widget.enabledBorder ??
                OutlineInputBorder(
                  borderSide: widget.borderSide ??
                      BorderSide(color: ColorManager.dividerColor2),
                  borderRadius: widget.borderRadius ??
                      const BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                ),
            focusedBorder: widget.focusedBorder ??
                OutlineInputBorder(
                  borderSide: widget.borderSide ??
                      BorderSide(color: ColorManager.primary),
                  borderRadius: widget.borderRadius ??
                      const BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                ),
            errorBorder: widget.errorBorder,
            focusColor: ColorManager.primary,
            errorMaxLines: 2,
            fillColor: isDarkMoodEnabled()
                ? ColorManager.darkAccent
                : ColorManager.white,
            filled: true,
            counterText: "",
            hoverColor: ColorManager.primary,
            errorStyle: TextStyle(
              fontFamily: Get.locale?.languageCode == "ar"
                  ? FontConstants.arabicFontFamily
                  : FontConstants.englishFontFamily,
              color: ColorManager.red,
              fontSize: 12.sp,
            ),
            hintStyle: TextStyle(
              fontFamily: Get.locale?.languageCode == "ar"
                  ? FontConstants.arabicFontFamily
                  : FontConstants.englishFontFamily,
              color: ColorManager.grey,
              fontSize: 14.sp,
            ),
            border: isDarkMoodEnabled()
                ? OutlineInputBorder(
                    borderSide: widget.borderSide ??
                        BorderSide(color: ColorManager.grey),
                    borderRadius: widget.borderRadius ??
                        const BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                  )
                : OutlineInputBorder(
                    borderSide: widget.borderSide ??
                        BorderSide(color: ColorManager.grey),
                    borderRadius: widget.borderRadius ??
                        const BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                  ),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 15.w,
              vertical: 16.h,
            ),
            suffixIcon: Theme(
              data: ThemeData(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    visiblePassword = !visiblePassword;
                  });
                },
                icon: visiblePassword
                    ? Icon(
                        Icons.visibility_off,
                        color: HexColor.fromHex("#B5B5B5"),
                      )
                    : Icon(
                        Icons.visibility,
                        color: HexColor.fromHex("#B5B5B5"),
                      ),
              ),
            ),
            hintText: widget.hintText!.isNotEmpty ? widget.hintText!.tr : '',
          ),
          validator: widget.validator,
        ),
      ],
    );
  }
}
