import 'package:flutter/material.dart';

class CartItem {
  final String name;
  final String imageUrl;
  int quantity; // Add quantity to CartItem

  CartItem(this.name, this.imageUrl, {this.quantity = 1});
}

class Cart {
  final List<CartItem> _items = [];

  List<CartItem> get items => _items;

  void addItem(CartItem item) {
    _items.add(item);
  }

  void removeItem(CartItem item) {
    _items.remove(item); // Remove item from cart
  }

  void clear() {
    _items.clear();
  }

  int get itemCount => _items.length;
}

class CartPage extends StatefulWidget {
  final Cart cart; // Receiving cart object from MenuPage

  const CartPage({super.key, required this.cart});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  // Fields for user details
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _creditCardController = TextEditingController();
  final _dobController = TextEditingController();

  // Method to handle checkout
  void _checkout() {
    if (_nameController.text.isEmpty ||
        _passwordController.text.isEmpty ||
        _creditCardController.text.isEmpty ||
        _dobController.text.isEmpty) {
      // If any field is empty, show error
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill all the fields')),
      );
      return;
    }

    setState(() {
      widget.cart.clear(); // Clear the cart after checkout
    });

    // Show success message
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Checkout successfully!')),
    );

    // Optionally, navigate back to the MenuPage or other page
    Navigator.pop(context); // Navigate back to the previous screen (MenuPage)
  }

  // Method to handle item quantity increase
  void _increaseQuantity(CartItem item) {
    setState(() {
      item.quantity++;
    });
  }

  // Method to handle item quantity decrease
  void _decreaseQuantity(CartItem item) {
    setState(() {
      if (item.quantity > 1) {
        item.quantity--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFefdcac),
      appBar: AppBar(
        backgroundColor: const Color(0xff92b423),
        title: const Text('Cart'),
      ),
      body: widget.cart.items.isEmpty
          ? const Center(child: Text('Your cart is empty'))
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: widget.cart.items.length,
                    itemBuilder: (context, index) {
                      final item = widget.cart.items[index];
                      return ListTile(
                        leading: Image.asset(item.imageUrl, width: 50),
                        title: Text(item.name),
                        subtitle: Text('Quantity: ${item.quantity}'),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // Decrease button
                            IconButton(
                              icon: const Icon(Icons.remove),
                              onPressed: () => _decreaseQuantity(item),
                            ),
                            // Increase button
                            IconButton(
                              icon: const Icon(Icons.add),
                              onPressed: () => _increaseQuantity(item),
                            ),
                            // Remove button
                            IconButton(
                              icon: const Icon(Icons.delete),
                              onPressed: () {
                                setState(() {
                                  widget.cart.removeItem(item); // Remove item from cart
                                });
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                // Checkout Button
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Show a dialog to enter user details
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Enter Details'),
                            content: SingleChildScrollView(
                              child: Column(
                                children: [
                                  // Name field
                                  _buildTextField(
                                    controller: _nameController,
                                    label: 'Name',
                                  ),
                                  // Password field
                                  _buildTextField(
                                    controller: _passwordController,
                                    label: 'Password',
                                    obscureText: true,
                                  ),
                                  // Credit Card field
                                  _buildTextField(
                                    controller: _creditCardController,
                                    label: 'Credit Card Info',
                                  ),
                                  // Date of Birth field
                                  _buildTextField(
                                    controller: _dobController,
                                    label: 'Date of Birth',
                                  ),
                                ],
                              ),
                            ),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop(); // Close the dialog
                                },
                                child: const Text('Cancel'),
                              ),
                              ElevatedButton(
                                onPressed: _checkout,
                                child: const Text('Checkout'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF92b423),
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    child: const Text('Checkout'),
                  ),
                ),
              ],
            ),
    );
  }

  // Helper method to build the text fields with consistent decoration
  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    bool obscureText = false,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: label,
          filled: true,
          fillColor: const Color(0xFF92b423), // Background color for the text field
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none, // Remove the border line
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16), // Padding inside the field
        ),
      ),
    );
  }
}
