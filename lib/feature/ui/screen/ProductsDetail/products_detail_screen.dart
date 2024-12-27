// part of 'product_detail_import.dart';

// class ProductDetail extends StatefulWidget {
//   final ProductModel product; // Product model to hold product details

//   ProductDetail({super.key, required this.product});

//   @override
//   State<ProductDetail> createState() => _ProductDetailState();
// }

// class _ProductDetailState extends State<ProductDetail> {
//   GlobalKey<CartIconKey> cartKey = GlobalKey<CartIconKey>();
//   GlobalKey productImageKey = GlobalKey(); // Key for product image
//   late Function(GlobalKey) runAddToCartAnimation;
//   var _cartQuantityItems = 0;

//   @override
//   Widget build(BuildContext context) {
//     return AddToCartAnimation(
//       cartKey: cartKey,
//       createAddToCartAnimation: (cartAnimation) {
//         dragAnimation:
//         const DragToCartAnimationOptions(
//           rotation: false,
//         );

//         this.runAddToCartAnimation = cartAnimation;
//       },
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           title: Text(widget.product.title), // Display the product title
//           actions: [
//             Padding(
//               padding: const EdgeInsets.only(right: 16.0),
//               child: AddToCartIcon(
//                 key: cartKey,
//                 icon: const Icon(Icons.shopping_cart),
//                 badgeOptions: const BadgeOptions(
//                   active: true,
//                   backgroundColor: Colors.green,
//                 ),
//               ),
//             ),
//           ],
//         ),
//         body: SingleChildScrollView(
//           scrollDirection: Axis.vertical,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Wrap Image with GlobalKey
//               Container(
//                 key: productImageKey,
//                 child: Image.network(
//                   widget.product.image,
//                 ),
//               ),
//               SizedBox(height: 16.0),
//               Text(
//                 widget.product.title,
//                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//               ),
//               Text(
//                 widget.product.description,
//                 style: TextStyle(fontSize: 15),
//               ),
//               SizedBox(height: 10),
//               Text(widget.product.category.toString()),
//               Divider(),
//               Text(
//                 'Price: \$${widget.product.price}',
//                 style: TextStyle(fontSize: 19),
//               ),
//               Text(widget.product.rating.toString()),
//               SizedBox(height: 20),
//               AddToCart(
//                 onClick: listClick,
//                 product: widget.product,
//               ), // Button to trigger animation
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   void listClick(GlobalKey widgetKey) async {
//     // Trigger the animation with the image key instead of button key
//     await runAddToCartAnimation(productImageKey);
//     await cartKey.currentState!
//         .runCartAnimation((++_cartQuantityItems).toString());
//     Navigator.push(
//         context, MaterialPageRoute(builder: (context) => CartScreen()));
//   }
// }
