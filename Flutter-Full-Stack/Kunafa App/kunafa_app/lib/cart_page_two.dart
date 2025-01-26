import 'package:flutter/material.dart';

class CartPageTwo extends StatelessWidget {
  const CartPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shopping Cart"),
      ),
      body: const Center(
        child: Text("Your cart is empty!"),
      ),
    );
  }
}
