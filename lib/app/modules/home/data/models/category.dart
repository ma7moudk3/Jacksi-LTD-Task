class Category {
  String name;
  String image;
  Category({required this.name, required this.image});

  Category.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        image = json['image'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'image': image,
      };
}
