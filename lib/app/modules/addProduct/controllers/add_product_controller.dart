import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AddProductController extends GetxController {
  List<File> images = [];

  void addImage(File image) {
    images.add(image);
    update();
  }

  void removeImage(File image) {
    images.remove(image);
    update();
  }

  Future pickImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      images.add(File(pickedFile.path));
      update();
    }
  }
  
}