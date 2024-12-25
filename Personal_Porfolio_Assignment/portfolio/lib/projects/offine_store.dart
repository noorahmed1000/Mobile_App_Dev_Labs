import 'package:flutter/material.dart';

class OfflineStore extends StatefulWidget {
  const OfflineStore({super.key});

  @override
  State<OfflineStore> createState() => _OfflineStoreState();
}

class _OfflineStoreState extends State<OfflineStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 125, 230, 191),
      appBar: AppBar(
        title: const Text(
          "Offline Store",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto',
          ),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: const Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Project Overview:',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                ),
                Text(
                  'The Offline Web Store project allows users to interact with a simulated e-commerce platform on their local machine. The application enables users to browse products, add them to their cart, and perform checkout operations. As the store operates offline, the project relies on local data storage, such as files or local databases, for saving product information, user cart details, and order history.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Roboto',
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Key Features:',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '1. Product Management:',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                ),
                Text(
                  '''A collection of products is pre-loaded into the application.
Each product may have a name, description, price, and quantity.
Users can view the product details such as price, availability, and descriptions.''',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Roboto',
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '2. Shopping Cart:',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                ),
                Text(
                  '''Users can add products to their cart.
The cart stores the selected products and their quantities.
Users can view their cart and remove products from the cart.''',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Roboto',
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '3. Order Management:',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                ),
                Text(
                  '''Users can proceed to checkout.
The order details are stored in the database.
Users can view their order history.''',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Roboto',
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '4. Offline Capabilities:',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                ),
                Text(
                  '''The application can be used offline.
The user's cart and order history are stored locally.
Users can view their cart and order history even when offline.''',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Roboto',
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '5. User Authentication:',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                ),
                Text(
                  '''Users can create an account and log in.
The user's account details are stored in the database.
Users can log out.''',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Roboto',
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '6. Responsive Design:',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                ),
                Text(
                  '''The application is designed to be responsive.
The user interface is optimized for different screen sizes and devices.''',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Roboto',
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Core Technologies:',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                ),
                Text(
                  '''1. Programming Language: C++
2. Database: SQLite
3. UI Framework: Flutter
4. Local Storage: File System
5. Authentication: Custom''',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Roboto',
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Sample C++ Code for Offline Store:',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '''// Sample C++ Code for managing products and orders

#include <iostream>
#include <fstream>
#include <vector>
#include <string>

using namespace std;

struct Product {
    string name;
    double price;
    int quantity;
};

class OfflineStore {
    vector<Product> products;

public:
    // Load products from a file
    void loadProducts() {
        ifstream file("products.txt");
        string name;
        double price;
        int quantity;
        
        while (file >> name >> price >> quantity) {
            products.push_back({name, price, quantity});
        }
    }

    // Display available products
    void displayProducts() {
        cout << "Available Products:" << endl;
        for (const auto& product : products) {
            cout << "Name: " << product.name << ", Price: " << product.price 
                 << ", Quantity: " << product.quantity << endl;
        }
    }

    // Add a product to cart (simple cart management)
    void addToCart(const string& productName) {
        for (auto& product : products) {
            if (product.name == productName && product.quantity > 0) {
                cout << productName << " added to your cart." << endl;
                product.quantity--;  // Reduce available quantity
                return;
            }
        }
        cout << "Product not available or out of stock." << endl;
    }
};

int main() {
    OfflineStore store;
    store.loadProducts();
    store.displayProducts();

    store.addToCart("Laptop");

    return 0;
}
                  ''',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Courier New',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
