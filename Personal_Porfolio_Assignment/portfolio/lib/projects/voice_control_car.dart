import 'package:flutter/material.dart';

class VoiceControlCar extends StatefulWidget {
  const VoiceControlCar({super.key});

  @override
  State<VoiceControlCar> createState() => _VoiceControlCarState();
}

class _VoiceControlCarState extends State<VoiceControlCar> {
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