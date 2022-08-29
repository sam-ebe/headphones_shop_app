import 'dart:convert';
import 'package:headphones_shop_app/models/categories.dart';
import 'package:http/http.dart' as http;

// fetch products from API
Future<List<Category>> fetchProducts() async {
  const String apiUrl =
      "https://630bd22083986f74a7b71a83.mockapi.io/categories";

  final response = await http.get(Uri.parse(apiUrl));

  if (response.statusCode == 200) {
    List<Category> categories = (json.decode(response.body) as List)
        .map((data) => Category.fromJson(data))
        .toList();
    return categories;
  } else {
    throw Exception('Failed to load');
  }
}
