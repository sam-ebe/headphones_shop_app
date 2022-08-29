import 'dart:convert';
import 'package:headphones_shop_app/models/product.dart';
import 'package:http/http.dart' as http;

// fetch products from API
Future<List<Product>> fetchProducts() async {
  const String apiUrl = "https://630bd22083986f74a7b71a83.mockapi.io/products";

  final response = await http.get(Uri.parse(apiUrl));

  if (response.statusCode == 200) {
    List<Product> products = (json.decode(response.body) as List)
        .map((data) => Product.fromJson(data))
        .toList();
    return products;
  } else {
    throw Exception('Failed to load');
  }
}
