// Multi Select widget
// This widget is reusable

import 'package:jacksi_task/app/core/helper_functions.dart';

import '../../app/constants/exports.dart';

class MultiSelect extends StatefulWidget {
  const MultiSelect({
    Key? key,
    this.isSingleSelect = false,
    required this.items,
    required this.selectedItems,
    required this.title,
    required this.submitButtonText,
    required this.cancelButtonText,
  }) : super(key: key);

  final List<String> selectedItems;
  final List<String> items;
  final String title, submitButtonText, cancelButtonText;
  final bool isSingleSelect;
  @override
  State<StatefulWidget> createState() => _MultiSelectState();
}

class _MultiSelectState extends State<MultiSelect> {
  void _itemChange(String itemValue, bool isSelected) {
    setState(() {
      if (isSelected) {
        if (widget.isSingleSelect) {
          widget.selectedItems.clear();
        }
        widget.selectedItems.add(itemValue);
      } else {
        widget.selectedItems.remove(itemValue);
      }
    });
  }

  @override
  void initState() {
    // _selectedItems = widget.selectedItems;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => true,
      child: AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        actionsAlignment: MainAxisAlignment.center,
        actionsPadding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
        contentTextStyle: const TextStyle(
          fontFamily: FontConstants.arabicFontFamily,
        ),
        title: PrimaryText(
          widget.title,
          fontWeight: FontWeightManager.semiBold,
          fontSize: 16,
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: widget.items
                .map((String item) => CheckboxListTile(
                      side: BorderSide(
                        color: ColorManager.borderColor2,
                        width: 2,
                      ),
                      value: widget.selectedItems.contains(item),
                      title: PrimaryText(
                        item,
                        fontFamily: detectLang(text: item)
                            ? FontConstants.englishFontFamily
                            : FontConstants.arabicFontFamily,
                        fontWeight: FontWeightManager.regular,
                      ),
                      controlAffinity: ListTileControlAffinity.leading,
                      activeColor: ColorManager.primary,
                      selectedTileColor: ColorManager.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      dense: true,
                      contentPadding: const EdgeInsets.all(0),
                      checkboxShape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: ColorManager.primary,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      onChanged: (bool? isChecked) =>
                          _itemChange(item, isChecked!),
                    ))
                .toList(),
          ),
        ),
        actions: [
          // GlobalButton(
          //   width: 80.w,
          //   height: 40.h,
          //   onTap: () => Get.back(),
          //   borderRadius: BorderRadius.circular(15.h),
          //   title: widget.cancelButtonText,
          // ),
          PrimaryButton(
            width: 200.w,
            height: 50.h,
            onPressed: () => Get.back(result: widget.selectedItems),
            title: widget.submitButtonText,
          ),
        ],
      ),
    );
  }
}
