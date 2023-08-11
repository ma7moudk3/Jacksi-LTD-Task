import 'package:jacksi_task/global_presentation/global_widgets/global_dropdown.dart';

import '../../../../generated/locales.g.dart';
import '../../../constants/exports.dart';
import '../controllers/add_product_controller.dart';

class AddProductView extends GetView<AddProductController> {
  const AddProductView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.accent,
        appBar: AppBar(
          backgroundColor: ColorManager.accent,
          elevation: 0,
          leading: Container(
            height: 50.h,
            //width: 50.w,
            margin: EdgeInsetsDirectional.only(
                start: 10.w, top: 12.h, bottom: 12.h),
            decoration: BoxDecoration(
                color: ColorManager.white,
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                  color: ColorManager.grey,
                )),
            child: Center(
              child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: ColorManager.black,
                  size: 20,
                ),
              ),
            ),
          ),
          centerTitle: true,
          title: PrimaryText(
            LocaleKeys.addAProduct.tr,
            color: HexColor.fromHex("#3E3E68"),
            fontWeight: FontWeightManager.semiBold,
            fontSize: 18,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PrimaryText(
                  LocaleKeys.productImages.tr,
                  color: ColorManager.black,
                  fontWeight: FontWeightManager.semiBold,
                  fontSize: 16,
                ),
                SizedBox(
                  height: 10.h,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child:
                      GetBuilder<AddProductController>(builder: (controller) {
                    if (controller.images.isNotEmpty) {
                      return Row(
                        children: controller.images
                            .map(
                              (e) => Container(
                                height: 100.h,
                                width: 100.w,
                                margin: EdgeInsetsDirectional.only(end: 10.w),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  border: Border.all(
                                    color: ColorManager.grey,
                                  ),
                                  image: DecorationImage(
                                      image: FileImage(e), fit: BoxFit.cover),
                                ),
                                child: IconButton(
                                    onPressed: () {
                                      controller.removeImage(e);
                                    },
                                    icon: Icon(
                                      Icons.close,
                                      color: ColorManager.red,
                                    )),
                              ),
                            )
                            .toList(),
                      );
                    } else {
                      return Row(
                        children: List.generate(4, (index) {
                          return Container(
                            height: 100.h,
                            width: 100.w,
                            margin: EdgeInsetsDirectional.only(end: 10.w),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(14),
                                border: Border.all(
                                  color: ColorManager.grey,
                                )),
                          );
                        }),
                      );
                    }
                  }),
                ),
                SizedBox(
                  height: 20.h,
                ),
                PrimaryButton(
                  onPressed: () {
                    controller.pickImage();
                  },
                  title: LocaleKeys.pressToAddImages.tr,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add_box_rounded,
                        color: ColorManager.white,
                        size: 20,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      PrimaryText(
                        LocaleKeys.pressToAddImages.tr,
                        color: ColorManager.white,
                        fontWeight: FontWeightManager.semiBold,
                        fontSize: 14,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                PrimaryTextField(
                  hintText: LocaleKeys.productName.tr,
                  controller: null,
                  labelText: LocaleKeys.productName.tr,
                ),
                SizedBox(
                  height: 20.h,
                ),
                PrimaryTextField(
                  hintText: LocaleKeys.storeName.tr,
                  controller: null,
                  labelText: LocaleKeys.storeName.tr,
                ),
                SizedBox(
                  height: 20.h,
                ),
                PrimaryTextField(
                  hintText: LocaleKeys.price.tr,
                  controller: null,
                  labelText: LocaleKeys.price.tr,
                ),
                SizedBox(
                  height: 20.h,
                ),
                PrimaryText(
                  LocaleKeys.category.tr,
                  color: ColorManager.black,
                  fontSize: 14,
                ),
                SizedBox(
                  height: 10.h,
                ),
                PrimaryDropDown(
                  items: const [
                    "تصنيف 1",
                    "تصنيف 2",
                  ],
                  onChanged: (value) {},
                  value: "تصنيف 2",
                  hint: LocaleKeys.category.tr,
                ),
                SizedBox(
                  height: 20.h,
                ),
                PrimaryButton(
                    onPressed: () {}, title: LocaleKeys.addAProduct.tr),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          ),
        ));
  }
}
