import '../../app/constants/exports.dart';

Future showGlobalDialog({
  String? title,
  String? subTitle,
  String? buttonTitle,

  void Function()? onButtonPressed,
}) async {
  await Future.delayed(const Duration(microseconds: 1200), () async {
    await Get.dialog(
      Container(
        color: ColorManager.black.withOpacity(0.1),
        height: 140.h,
        width: 140.w,
        child: Center(
          child: Container(
            width: Get.width,
            margin: EdgeInsets.symmetric(horizontal: 18.w),
            child: GlobalDialog(
              title: title,
              buttonTitle: buttonTitle,
              subTitle: subTitle,
              onButtonPressed: onButtonPressed,
            ),
          ),
        ),
      ),
    );
  });
}

class GlobalDialog extends StatelessWidget {
  final String? title;
  final String? subTitle;

  final String? buttonTitle;
  final void Function()? onButtonPressed;
  const GlobalDialog({
    Key? key,
    this.title,
    this.onButtonPressed,
    this.buttonTitle,
    this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(20),
      color: ColorManager.white,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 20.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PrimaryText(
                  title ?? "",
                  color: ColorManager.primary,
                  fontSize: 16,
                  fontWeight: FontWeightManager.semiBold,
                  textAlign: TextAlign.center,
                ),
                Get.locale!.languageCode != "ar"
                    ? SizedBox(
                        width: 5.w,
                      )
                    : const SizedBox.shrink(),
              ],
            ),
            SizedBox(height: 15.h),
            PrimaryText(
              subTitle ?? "",
              color: ColorManager.fontColor,
              fontSize: 15,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.h),
            PrimaryButton(
              title: buttonTitle ?? "",
              width: 250.w,
              onPressed: onButtonPressed ?? () => Get.back(),
            ),
          ],
        ),
      ),
    );
  }
}
