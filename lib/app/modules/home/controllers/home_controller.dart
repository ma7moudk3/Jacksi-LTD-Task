import 'package:get/get.dart';

import '../data/models/category.dart';
import '../data/models/product.dart';

class HomeController extends GetxController {
  RxBool isHorizontal = false.obs;


  //! you can use this method to get data from api
  List<Category> categories = [
    Category(name: "عرض الكل", image: "assets/images/show_all.png"),
    Category(name: "Fruits", image: "assets/images/category1.png"),
    Category(name: "Vegetables", image: "assets/images/category2.png"),
    Category(name: "Meat", image: "assets/images/category3.png"),
    Category(name: "Fruits", image: "assets/images/category1.png"),
    Category(name: "Vegetables", image: "assets/images/category2.png"),
    Category(name: "Meat", image: "assets/images/category3.png"),
    Category(name: "Fruits", image: "assets/images/category1.png"),
    Category(name: "Vegetables", image: "assets/images/category2.png"),
    Category(name: "Meat", image: "assets/images/category3.png"),
  ];
  //! you can use this method to get data from api
  List<Product> products = [
    Product(
        name: "Apple",
        image: "assets/images/product1.png",
        storeName: "Fresh Fruits",
        price: "10"),
    Product(
        name: "Banana",
        image: "assets/images/product2.png",
        price: "10",
        storeName: "Fresh Fruits"),
    Product(
        name: "Orange",
        image: "assets/images/product3.png",
        price: "10",
        storeName: "Fresh Fruits"),
    Product(
        name: "Apple",
        image: "assets/images/product1.png",
        price: "10",
        storeName: "Fresh Fruits"),
    Product(
        name: "Banana",
        price: "10",
        image: "assets/images/product2.png",
        storeName: "Fresh Fruits"),
    Product(
        name: "Orange",
        price: "10",
        image: "assets/images/product3.png",
        storeName: "Fresh Fruits"),
    Product(
        name: "Apple",
        price: "10",
        image: "assets/images/product1.png",
        storeName: "Fresh Fruits"),
    Product(
        name: "Banana",
        price: "10",
        image: "assets/images/product2.png",
        storeName: "Fresh Fruits"),
    Product(
        name: "Orange",
        price: "10",
        image: "assets/images/product3.png",
        storeName: "Fresh Fruits"),
  ];
}
