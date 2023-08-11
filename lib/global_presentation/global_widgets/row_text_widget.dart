import 'package:jacksi_task/app/core/helper_functions.dart';

import '../../app/constants/exports.dart';

class RowTextWidget extends StatelessWidget {
  const RowTextWidget({
    Key? key,
    required this.leadingTitle,
    this.middleTitle,
    required this.trailingTitle,
    this.leadingColor,
    this.middleColor,
    this.trailingColor,
    this.leadingFontWeight = FontWeightManager.medium,
    this.trailingFontWeight = FontWeightManager.regular,
    this.middleFontWeight = FontWeightManager.regular,
    this.onTap,
  }) : super(key: key);
  final String leadingTitle;
  final String trailingTitle;
  final String? middleTitle;
  final Color? leadingColor, middleColor, trailingColor;
  final FontWeight leadingFontWeight, middleFontWeight, trailingFontWeight;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        PrimaryText(
          leadingTitle,
          textAlign: TextAlign.start,
          fontSize: 15,
          hasTooltip: true,
          textDirection: detectLang(text: middleTitle ?? "")
              ? TextDirection.ltr
              : TextDirection.rtl,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          fontWeight: leadingFontWeight,
          color: leadingColor ?? ColorManager.black18,
        ),
        if (middleTitle != null)
          SizedBox(
            width: 0.27.sw,
            child: PrimaryText(
              middleTitle!,
              fontSize: 15,
              textAlign: TextAlign.end,
              textDirection: detectLang(text: middleTitle ?? "")
                  ? TextDirection.ltr
                  : TextDirection.rtl,
              maxLines: 1,
              hasTooltip: true,
              overflow: TextOverflow.ellipsis,
              fontWeight: middleFontWeight,
              color: middleColor ?? ColorManager.black18,
            ),
          ),
        GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: onTap,
          child: SizedBox(
            width: 0.3.sw,
            child: PrimaryText(
              trailingTitle,
              fontSize: 15,
              textAlign: TextAlign.end,
              maxLines: 1,
              textDirection: detectLang(text: middleTitle ?? "")
                  ? TextDirection.ltr
                  : TextDirection.rtl,
              hasTooltip: true,
              overflow: TextOverflow.ellipsis,
              color: trailingColor,
              fontWeight: trailingFontWeight,
            ),
          ),
        ),
      ],
    );
  }
}
