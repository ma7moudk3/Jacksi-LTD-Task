class Product {
  String name;
  String image;
  String storeName;
  String price;

  Product(
      {required this.name,
      required this.image,
      required this.storeName,
      required this.price});

  Product.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        image = json['image'],
        storeName = json['storeName'],
        price = json['price'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'image': image,
        'storeName': storeName,
        'price': price,
      };
}
