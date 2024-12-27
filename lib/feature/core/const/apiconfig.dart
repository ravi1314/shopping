// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:shoppingapp/feature/data/model/products_model.dart';

// class Apiconfig {
//   final url = 'https://fakestoreapi.com/products';

//  Future<List<ProductModel>> getData() async {
//   try {
//     final response = await http.get(Uri.parse(url));
//     if (response.statusCode == 200) {
//       // Parse the list of products
//       return ProductModelFromJson(response.body);
//     } else {
//       throw Exception('Failed to load data. Status code: ${response.statusCode}');
//     }
//   } catch (e) {
//     print('Error: $e');
//     throw Exception('Error: $e');
//   }
// }

// }


