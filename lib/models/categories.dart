class Category {
  final int? numOfProducts;
  final String? id, name, image;

  Category({
    this.id,
    this.name,
    this.image,
    this.numOfProducts,
  });

  // create product from json
  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json["id"],
      name: json["name"],
      image: json["image"],
      numOfProducts: json["numOfProducts"],
    );
  }
}

Category category = Category(
  id: "1",
  name: "Sony",
  image: "assets/images/img_1.png",
  numOfProducts: 56,
);
