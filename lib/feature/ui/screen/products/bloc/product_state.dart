part of 'product_cubit.dart';

abstract class ProductState extends Equatable {
  const ProductState();

  @override
  List<Object> get props => [];
}

class ProductInitial extends ProductState {}

class ProductLoading extends ProductState {}

class ProductLoaded extends ProductState {
  late List<ProductModel> post;
  ProductLoaded({required this.post});
}

class ProductFailed extends ProductState {
  final String message;

  ProductFailed(this.message);

  @override
  List<Object> get props => [message];
}
