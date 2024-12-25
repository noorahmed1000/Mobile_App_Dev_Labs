import 'package:flutter/material.dart';
import 'package:portfolio/main.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title:const Center(
          child: Text('Welcome To Home Page',
          style: TextStyle(
            fontFamily: 'roboto',
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
        onPressed:() {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MyHomePage(title: 'Personal portfolio') ),
          );
        },
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(200, 50),
          backgroundColor: Colors.blueAccent
        ),
        child: const Text('Welcome To Home Page',
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontFamily: 'roboto',
        ),
            ),
      )
      )
    );
  }
}