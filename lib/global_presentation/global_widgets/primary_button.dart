import '../../app/constants/exports.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? title;
  final Color? color;
  final Color? fontColor;
  final double? fontSize, width, height;
  final FontWeight fontWeight;
  final BorderSide? borderSide;
  final BorderRadiusGeometry? borderRadius;
  final bool isDisabled;
  final Widget? child;
  final bool onPressedIsNeededInCaseOfIsDisabledTrue;
  const PrimaryButton({
    Key? key,
    required this.onPressed,
    required this.title,
    this.color,
    this.width,
    this.height,
    this.onPressedIsNeededInCaseOfIsDisabledTrue = false,
    this.isDisabled = false,
    this.borderSide,
    this.borderRadius,
    this.fontSize = 14,
    this.fontWeight = FontWeightManager.medium,
    this.fontColor = Colors.white,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? Get.width,
      height: height ?? 50.h,
      child: Theme(
        data: Theme.of(context).copyWith(
          highlightColor: ColorManager.transparent,
          splashColor: ColorManager.transparent,
          hoverColor: ColorManager.transparent,
        ),
        child: ElevatedButton(
          onPressed: isDisabled && !onPressedIsNeededInCaseOfIsDisabledTrue
              ? null
              : onPressed,
          style: ElevatedButton.styleFrom(
            splashFactory: NoSplash.splashFactory,
            shadowColor: ColorManager.transparent,
            surfaceTintColor: ColorManager.transparent,
            backgroundColor: isDisabled
                ? ColorManager.fontColor6.withOpacity(0.4)
                : (color ?? (ColorManager.primary)),
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(15.r),
              side: isDisabled
                  ? BorderSide.none
                  : (borderSide ??
                      BorderSide(color: ColorManager.primary, width: 1.5)),
            ),
            disabledBackgroundColor: ColorManager.fontColor6.withOpacity(0.4),
            foregroundColor:
                isDisabled ? ColorManager.fontColor6.withOpacity(0.4) : null,
            elevation: 0,
          ),
          child: child ??
              PrimaryText(
                title!,
                fontSize: fontSize ?? 14,
                textAlign: TextAlign.center,
                color: isDisabled ? ColorManager.darkGrey2 : fontColor,
                fontWeight: fontWeight,
              ),
        ),
      ),
    );
  }
}
