// ignore_for_file: must_be_immutable

import 'package:google_fonts/google_fonts.dart';
import 'package:jacksi_task/app/constants/exports.dart';

import '../../app/core/helper_functions.dart';

class PrimaryText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color? color;
  final FontWeight fontWeight;
  TextAlign? textAlign;
  final TextOverflow overflow;
  final double? letterSpacing;
  final int? maxLines;
  final bool lineThrow;
  final bool underLine;
  final double height;
  final TextDirection? textDirection;
  final bool hasSpecificColor;
  final bool? hasTooltip;
  final String? fontFamily;
  PrimaryText(
    this.text, {
    Key? key,
    this.fontSize = 13,
    this.color,
    this.fontFamily,
    this.fontWeight = FontWeightManager.regular,
    this.textAlign,
    this.letterSpacing,
    this.textDirection,
    this.hasTooltip = false,
    this.overflow = TextOverflow.visible,
    this.maxLines,
    this.hasSpecificColor = false,
    this.lineThrow = false,
    this.height = 1.5,
    this.underLine = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    textAlign ??=
        Get.locale == const Locale("ar") ? TextAlign.right : TextAlign.left;
    TextStyle style = TextStyle(
      color: color ?? ColorManager.fontColor,
      fontSize: (fontSize).sp,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      height: height,
      fontFamily: fontFamily ??
          FontConstants.arabicFontFamily,
      decoration: lineThrow
          ? TextDecoration.lineThrough
          : underLine
              ? TextDecoration.underline
              : TextDecoration.none,
    );
    if (hasTooltip == true) {
      return Tooltip(
        // remove / and special characters from the message and exclude arabic characters by adding adding the Unicode range for Arabic characters (\u0600-\u06FF)
        message: text.tr.replaceAll(RegExp(r'[^\w\s%₪\u0600-\u06FF.,]+'), ''),
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(16),
        showDuration: const Duration(milliseconds: 5500),
        textStyle: GoogleFonts.montserrat(
          color: color ?? ColorManager.fontColor,
          fontSize: 12.sp,
          fontWeight: FontWeightManager.medium,
        ),
        preferBelow: true,
        textAlign: detectLang(
          text: text.tr,
        )
            ? TextAlign.left
            : TextAlign.right,
        decoration: BoxDecoration(
          color: ColorManager.grey5,
          borderRadius: BorderRadius.circular(10),
        ),
        triggerMode: TooltipTriggerMode.tap,
        child: Text(
          text.tr,
          softWrap: false,
          textAlign: textAlign,
          overflow: overflow,
          maxLines: maxLines,
          textDirection: textDirection ??
              (detectLang(text: text.tr)
                  ? TextDirection.ltr
                  : TextDirection.rtl),
          style: style,
        ),
      );
    }
    return Text(
      text.tr,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      textDirection: textDirection ??
          (detectLang(text: text.tr) ? TextDirection.ltr : TextDirection.rtl),
      style: style,
    );
  }
}
