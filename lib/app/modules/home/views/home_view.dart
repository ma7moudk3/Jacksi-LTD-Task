import 'package:jacksi_task/app/constants/exports.dart';

import '../../../../generated/locales.g.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.accent,
        appBar: AppBar(
          backgroundColor: ColorManager.accent,
          elevation: 0,
          centerTitle: true,
          title: PrimaryText(
            LocaleKeys.products.tr,
            color: HexColor.fromHex("#3E3E68"),
            fontWeight: FontWeightManager.semiBold,
            fontSize: 20,
          ),
          actions: [
            Container(
              height: 50.h,
              width: 50.w,
              margin: EdgeInsetsDirectional.only(
                  end: 10.w, top: 10.h, bottom: 10.h),
              decoration: BoxDecoration(
                  color: ColorManager.white,
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                    color: ColorManager.grey,
                  )),
              child: IconButton(
                onPressed: () {
                  //Get.toNamed(Routes.CART);
                },
                icon: Icon(
                  Icons.add,
                  color: ColorManager.black,
                  size: 29.sp,
                ),
              ),
            )
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PrimaryText(
                LocaleKeys.categories.tr,
                color: HexColor.fromHex("#3E3E68"),
                fontWeight: FontWeightManager.semiBold,
                fontSize: 16,
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 130.h,
                child: ListView.builder(
                    itemCount: controller.categories.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                          height: 114.h,
                          width: 96.w,
                          margin:
                              EdgeInsetsDirectional.only(start: 5.w, end: 5.w),
                          decoration: BoxDecoration(
                              color: ColorManager.white,
                              borderRadius: BorderRadius.circular(14),
                              border: Border.all(
                                color: ColorManager.grey,
                              )),
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 10.h),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                controller.categories[index].image,
                                height: 66.h,
                                width: 82.w,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              PrimaryText(
                                controller.categories[index].name,
                                color: HexColor.fromHex("#3E3E68"),
                                fontWeight: FontWeightManager.semiBold,
                                fontSize: 14,
                              ),
                            ],
                          ));
                    }),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      controller.isHorizontal.value =
                          !controller.isHorizontal.value;
                    },
                    child: Container(
                      //width: 210.w,
                      height: 45.h,
                      padding: EdgeInsetsDirectional.symmetric(
                        vertical: 10.h,
                        horizontal: 15.w,
                      ),
                      decoration: BoxDecoration(
                        color: ColorManager.white,
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                          color: ColorManager.grey,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/images/vector.svg",
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Obx(
                            () => PrimaryText(
                              controller.isHorizontal.value
                                  ? LocaleKeys.changeToVertical.tr
                                  : LocaleKeys.changeToHorizontal.tr,
                              color: HexColor.fromHex("#FF4155"),
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Expanded(
                child: Obx(
                  () => ListView.builder(
                      scrollDirection: controller.isHorizontal.value == true
                          ? Axis.horizontal
                          : Axis.vertical,
                      itemCount: controller.products.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 114.h,
                                width: 114.w,
                                decoration: BoxDecoration(
                                  color: ColorManager.white,
                                  borderRadius: BorderRadius.circular(14),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        controller.products[index].image),
                                  ),
                                  border: Border.all(
                                    color: ColorManager.grey,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  PrimaryText(
                                    controller.products[index].name,
                                    color: HexColor.fromHex("#3E3E68"),
                                    fontWeight: FontWeightManager.semiBold,
                                    fontSize: 19,
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Row(
                                    children: [
                                      PrimaryText(
                                        controller.products[index].price,
                                        color: HexColor.fromHex("#3E3E68"),
                                        fontWeight: FontWeightManager.semiBold,
                                        fontSize: 14,
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      PrimaryText(
                                        "دولار",
                                        color: ColorManager.primary,
                                        fontWeight: FontWeightManager.semiBold,
                                        fontSize: 14,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Container(
                                    height: 30.h,
                                    //width: 65.w,
                                    padding: EdgeInsetsDirectional.symmetric(
                                      vertical: 5.h,
                                      horizontal: 10.w,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorManager.grey,
                                      borderRadius: BorderRadius.circular(7),
                                      border: Border.all(
                                        color: ColorManager.grey,
                                      ),
                                    ),
                                    child: Center(
                                      child: PrimaryText(
                                        controller.products[index].storeName,
                                        color: ColorManager.grey2,
                                        fontSize: 12,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        );
                      }),
                ),
              )
            ],
          ),
        ));
  }
}
