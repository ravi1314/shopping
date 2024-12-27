part of 'home_import.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        "Hello Ravi,",
                        style: GoogleFonts.alkatra(
                          textStyle: TextStyle(fontSize: 28),
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Material(
                      elevation: 10,
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  "Your Fresh Start, Every Day.",
                  style: GoogleFonts.alkatra(
                    textStyle: const TextStyle(fontSize: 19),
                  ),
                ),
                const SizedBox(height: 20),
                CarouselsliderProducts(),
                const SizedBox(height: 20),
                Text(
                  "What would you like to buy?",
                  style: GoogleFonts.alkatra(
                    textStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                _buildProductRow(),
                const SizedBox(height: 10),
                _buildProductRow(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildProductRow() {
    return Row(
      children: [
        Expanded(
          child: _buildProductCard(
            imageUrl:
                'https://img.freepik.com/premium-photo/tomato-basil-leaves-isolated_183352-1515.jpg?ga=GA1.1.1474834455.1717696714&semt=ais_hybrid',
            title: "Tomato",
            description: "Fresh, flavorful, and packed with nutrition.",
            price: "30k/g",
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: _buildProductCard(
            imageUrl:
                'https://img.freepik.com/premium-photo/red-onion-isolated_403166-475.jpg?ga=GA1.1.1474834455.1717696714&semt=ais_hybrid',
            title: "Red Onion",
            description: "Crisp, flavorful, and essential for every kitchen.",
            price: "60k/g",
          ),
        ),
      ],
    );
  }

  Widget _buildProductCard({
    required String imageUrl,
    required String title,
    required String description,
    required String price,
  }) {
    return Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(imageUrl, height: 120, fit: BoxFit.cover),
            const SizedBox(height: 8),
            Text(
              title,
              style: GoogleFonts.alkatra(
                textStyle: const TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            Text(
              description,
              style: GoogleFonts.alkatra(
                textStyle: const TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 87, 85, 85),
                ),
              ),
            ),
            Text(
              'Price: $price',
              style: GoogleFonts.alkatra(
                textStyle: const TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: MaterialButton(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: Colors.black,
                onPressed: () {},
                child: Text(
                  "Add to Bag",
                  style: GoogleFonts.alkatra(
                    textStyle: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
