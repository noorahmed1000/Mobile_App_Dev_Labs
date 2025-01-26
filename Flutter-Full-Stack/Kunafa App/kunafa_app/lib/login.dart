import 'package:flutter/material.dart';
import 'package:kunafa_app/home_page.dart';
import 'package:kunafa_app/signup.dart'; // Import the signup page
import 'package:http/http.dart' as http;
import 'dart:convert';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _isLoading = false;

  Future<void> _login() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });

      const String apiUrl = 'http://127.0.0.1:8000/api/token/'; // Replace with your actual API endpoint

      try {
        final response = await http.post(
          Uri.parse(apiUrl),
          headers: {'Content-Type': 'application/json'},
          body: json.encode({
            'username': _usernameController.text,
            'password': _passwordController.text,
          }),
        );

        if (response.statusCode == 200) {
          final data = json.decode(response.body);
          if (data['access'] != null) {
            // Show success message before navigating
            _showSuccess('Login successful!');

            // Navigate to HomePage after a short delay (to show the success message)
            Future.delayed(const Duration(seconds: 1), () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            });
          } else {
            _showError('Invalid credentials');
          }
        } else {
          _showError('Login failed. Please try again.');
        }
      } catch (e) {
        _showError('An error occurred. Please check your connection.');
      } finally {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  // Show success message
  void _showSuccess(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.green, // Optional: Set background color to green for success
      ),
    );
  }

  // Show error message
  void _showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFefdcac),
      appBar: AppBar(
        backgroundColor: const Color(0xff92b423),
        title: const Text('Login'),
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

              // Show loading indicator or Login button
              _isLoading
                  ? const CircularProgressIndicator()
                  : ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF92b423),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero, // Square corners
                        ),
                      ),
                      onPressed: _login,
                      child: const Text('Login'),
                    ),

              const SizedBox(height: 16.0), // Spacing between buttons

              // Sign Up Navigation
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('New here? ', style: TextStyle(fontSize: 16.0)),
                  TextButton(
                    onPressed: () {
                      // Navigate to the SignUp page when the user taps the text
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Signup()),
                      );
                    },
                    child: const Text(
                      'Sign up here',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Color(0xFF92b423), // Same color as button
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
