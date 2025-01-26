import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _isLoading = false;

  // Function to handle sign-up
  Future<void> _signUp() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });

      const String apiUrl = 'http://127.0.0.1:8000/api/create/'; // Replace with your actual sign-up endpoint

      try {
        // Sending user data to the backend for registration
        final response = await http.post(
          Uri.parse(apiUrl),
          headers: {'Content-Type': 'application/json'},
          body: json.encode({
            'username': _usernameController.text,
            'password': _passwordController.text,
          }),
        );

        if (response.statusCode == 201) {
          // Success - User registered
          _showSuccess('Sign-up successful! You can now log in.');
        } else if (response.statusCode == 400) {
          // Handle invalid data error (e.g., username already exists)
          _showError('Invalid data. Please check your input.');
        } else {
          // Handle other errors
          _showError('Something went wrong. Please try again.');
        }
      } catch (e) {
        // Handle network or other errors
        _showError('An error occurred. Please check your connection.');
      } finally {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  // Function to show success message
  void _showSuccess(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.green, // Green color for success
      ),
    );
  }

  // Function to show error message
  void _showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.red, // Red color for error
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFefdcac),
      appBar: AppBar(
        backgroundColor: const Color(0xff92b423),
        title: const Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Username Input
              TextFormField(
                controller: _usernameController,
                decoration: const InputDecoration(labelText: 'Username'),
                validator: (value) =>
                    value == null || value.isEmpty ? 'Please enter your username' : null,
              ),
              const SizedBox(height: 16.0),
              
              // Password Input
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
                validator: (value) =>
                    value == null || value.isEmpty ? 'Please enter your password' : null,
              ),
              const SizedBox(height: 24.0),

              // Show loading indicator or Sign Up button
              _isLoading
                  ? const CircularProgressIndicator()
                  : ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF92b423),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
                      onPressed: _signUp,
                      child: const Text('Sign Up'),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
