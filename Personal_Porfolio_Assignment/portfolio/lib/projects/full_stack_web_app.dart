import 'package:flutter/material.dart';

class FullStackWebApp extends StatefulWidget {
  const FullStackWebApp({super.key});

  @override
  State<FullStackWebApp> createState() => _FullStackWebAppState();
}

class _FullStackWebAppState extends State<FullStackWebApp> {
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
      body: Container(),
    );
  }
}