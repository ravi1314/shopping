part of 'products_import.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<ProductCubit>().getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
      ),
      body: BlocBuilder<ProductCubit, ProductState>(
        builder: (context, state) {
          if (state is ProductFailed) {
            return Center(
              child: Text("Error is ${state.message}"),
            );
          } else if (state is ProductLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is ProductLoaded) {
            return ListView.builder(
              itemCount: state.post.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(state.post[index].title),
                  subtitle: Text(state.post[index].description),
                );
              },
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
