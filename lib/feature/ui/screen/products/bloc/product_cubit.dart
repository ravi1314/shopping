import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;
import 'package:equatable/equatable.dart';
import 'package:shopping/feature/data/model/products_model.dart';
import 'package:shopping/feature/ui/screen/products/repository/product_repo.dart';



part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitial());

  Future<void> getProducts() async {
    emit(ProductLoading());
    try {
      final response =
          await http.get(Uri.parse('https://fakestoreapi.com/products'));
      if (response.statusCode == 200) {
        // Decode the response body and map it to a list of ProductModel.
        final data = jsonDecode(response.body) as List;
        final List<ProductModel> products = data
            .map((productData) => ProductModel.fromJson(productData))
            .toList();

        // Emit the loaded state with fetched products.
        emit(ProductLoaded(post: products));
      } else {
        emit(ProductFailed('Failed to load products: ${response.reasonPhrase}'));
      }
    } catch (e) {
      emit(ProductFailed('Error occurred: ${e.toString()}'));
    }
  }
}
