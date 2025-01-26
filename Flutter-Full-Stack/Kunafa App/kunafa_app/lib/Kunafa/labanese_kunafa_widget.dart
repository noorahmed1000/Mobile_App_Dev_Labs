import 'package:flutter/material.dart';

// Assuming you have a Cart and CartItem model in your app
class CartItem {
  final String name;
  final String imageUrl;

  CartItem(this.name, this.imageUrl);
}

class Cart {
  final List<CartItem> _items = [];

  List<CartItem> get items => _items;
  int get itemCount => _items.length;

  void addItem(CartItem item) {
    _items.add(item);
  }
}

class LabaneseKunafaWidget extends StatelessWidget {
  final Function(String, String) addToCart;  // Add this parameter to the constructor

  const LabaneseKunafaWidget({super.key, required this.addToCart});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        height: 550,
        width: 300,
        decoration: BoxDecoration(
          color: const Color(0xff92b423),
          border: Border.all(
            color: Colors.black,
            width: 3.0,
          ),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 10,
              offset: const Offset(5, 5),
            ),
          ],
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: SizedBox(
                width: 200,
                height: 200,
                child: Image.asset(
                  "assets/images/pic13.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Labanese Kunafa',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: "edu",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Lebanese Kunafa is a sweet, flaky pastry made with shredded phyllo dough, layered with a creamy cheese filling, and soaked in fragrant sugar syrup.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontFamily: "edu",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFefdcac),
                ),
                onPressed: () {
                  addToCart('Labanese Kunafa', 'assets/images/pic13.jpg'); // Add the item to the cart
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Labanese Kunafa added to cart!'),
                      duration: Duration(seconds: 2),
                    ),
                  );
                },
                child: const Text(
                  'Add To Cart',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: "edu",
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
