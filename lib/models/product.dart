class Product {
  final int? price;
  final String? id, name, category, image, subtitle, description;

  Product({
    this.id,
    this.name,
    this.price,
    this.category,
    this.image,
    this.subtitle,
    this.description,
  });

  // create product from json
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json["id"],
      name: json["name"],
      price: json["price"],
      image: json["image"],
      category: json["category"],
      subtitle: json["subtitle"],
      description: json["description"],
    );
  }
}

Product product = Product(
  id: "1",
  name: "Sony Headphones",
  price: 229,
  image: "assets/images/img_1.png",
  category: "Sony",
  subtitle: "Augmented noise-canceling",
  description:
      "Padded ultra-soft ear cushions and headband provide a perfect custom fit for all users and a comfortable and Long-lasting listening experience while protecting the ears. Adjustable size slider and foldable design make it Space-Saving and easy to carry.",
);
