import 'package:flutter/material.dart';

class GreenRollWidget extends StatefulWidget {
  final Function(String, String) addToCart;  // Function to add item to cart

  const GreenRollWidget({super.key, required this.addToCart});

  @override
  State<GreenRollWidget> createState() => _GreenRollWidgetState();
}

class _GreenRollWidgetState extends State<GreenRollWidget> {
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
                  "assets/images/pic5.jpg",  // Your image
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Green Roll',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: "edu",
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Green roll baklawa is a unique twist on traditional baklawa, featuring layers of phyllo dough filled with a blend of pistachios, almonds, and green-hued nuts, lightly sweetened with syrup.",
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
                  const itemName = 'Green Roll';  // Item name
                  const imageUrl = 'assets/images/pic5.jpg';  // Image URL

                  widget.addToCart(itemName, imageUrl);  // Call addToCart

                  // Show a SnackBar with the success message and item name
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('$itemName added to cart successfully!'),  // Display item name dynamically
                      duration: Duration(seconds: 2),  // Set duration for how long the message appears
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
            )
          ],
        ),
      ),
    );
  }
}
