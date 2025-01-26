import 'package:flutter/material.dart';
import 'package:kunafa_app/Baklawa/antep_widget.dart';
import 'package:kunafa_app/Baklawa/carrot_slice_widget.dart';
import 'package:kunafa_app/Baklawa/chocolate_baklawa_widget.dart';
import 'package:kunafa_app/Baklawa/finger_widget.dart';
import 'package:kunafa_app/Baklawa/green_roll_widget.dart';
import 'package:kunafa_app/Baklawa/mix_baklawa_widget.dart';
import 'package:kunafa_app/Baklawa/mix_roll_widget.dart';
import 'package:kunafa_app/Baklawa/najma_widget.dart';
import 'package:kunafa_app/Baklawa/pistachio_square_widget.dart';
// import 'package:badges/badges.dart';
// import 'package:kunafa_app/Baklawa/antep_widget.dart';
// import 'package:kunafa_app/Baklawa/carrot_slice_widget.dart';
// import 'package:kunafa_app/Baklawa/chocolate_baklawa_widget.dart';
// import 'package:kunafa_app/Baklawa/finger_widget.dart';
// import 'package:kunafa_app/Baklawa/green_roll_widget.dart';
// import 'package:kunafa_app/Baklawa/mix_baklawa_widget.dart';
// import 'package:kunafa_app/Baklawa/mix_roll_widget.dart';
// import 'package:kunafa_app/Baklawa/najma_widget.dart';
// import 'package:kunafa_app/Baklawa/pistachio_square_widget.dart';
import 'package:kunafa_app/Baklawa/sarwar_widget.dart';
import 'package:kunafa_app/Baklawa/sobiyat_widget.dart';
import 'package:kunafa_app/Baklawa/special_antep_widget.dart';
import 'package:kunafa_app/cart_page.dart';
// import 'package:kunafa_app/Baklawa/sobiyat_widget.dart';
// import 'package:kunafa_app/Baklawa/special_antep_widget.dart';
// import 'package:kunafa_app/home_page.dart';

// Define your Cart and CartItem models
class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Baklawa Page',
      debugShowCheckedModeBanner: false,
      home: Menu(),
    );
  }
}

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  final Cart _cart = Cart(); // Instantiate the Cart object

  void _addToCart(String name, String imageUrl) {
    setState(() {
      _cart.addItem(CartItem(name, imageUrl)); // Add item to cart
    });
  }

  void _goToCart() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CartPage(cart: _cart),  // Pass the cart object to CartPage
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFefdcac),
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Welcome To Baklawa Menu',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontFamily: "edu",
            ),
          ),
        ),
        backgroundColor: const Color(0xff92b423),
        actions: [
          Stack(
            clipBehavior: Clip.none,  // Allows the badge to overflow the icon
            children: [
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: _goToCart, // Navigate to CartPage when tapped
              ),
              if (_cart.itemCount > 0) // Only show badge if there are items in the cart
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      _cart.itemCount.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          // Add items to the cart section
          Expanded(
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SarwarWidget(
                      addToCart: _addToCart,  // Pass the addToCart function here
                    ),
                    AntepWidget(addToCart: _addToCart),
                    SpecialAntepWidget(addToCart: _addToCart),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MixRollWidget(addToCart: _addToCart),
                    GreenRollWidget(addToCart: _addToCart),
                    SobiyatWidget(addToCart: _addToCart),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    PistachioSquareWidget(addToCart: _addToCart),
                    FingerWidget(addToCart: _addToCart),
                    NajmaWidget(addToCart: _addToCart),
                  ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CarrotSliceWidget(addToCart: _addToCart),
                    MixBaklawaWidget(addToCart: _addToCart),
                    ChocolateBaklawaWidget(addToCart: _addToCart),
                  ],
                )  
              ],
            ),
          ),
          // Button to navigate to CartPage
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: _goToCart,
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),  // Make the button full width
                backgroundColor: const Color(0xff92b423),  // Button color
              ),  // Navigate to CartPage
              child: const Text('Go to Cart'),
            ),
          ),
        ],
      ),
    );
  }
}