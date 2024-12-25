import 'package:flutter/material.dart';

class SolarTrackingSystem extends StatefulWidget {
  const SolarTrackingSystem({super.key});

  @override
  State<SolarTrackingSystem> createState() => _SolarTrackingSystemState();
}

class _SolarTrackingSystemState extends State<SolarTrackingSystem> {
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