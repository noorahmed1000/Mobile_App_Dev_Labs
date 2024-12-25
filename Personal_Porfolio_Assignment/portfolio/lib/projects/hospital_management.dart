import 'package:flutter/material.dart';

class HospitalManagement extends StatefulWidget {
  const HospitalManagement({super.key});

  @override
  State<HospitalManagement> createState() => _HospitalManagementState();
}

class _HospitalManagementState extends State<HospitalManagement> {
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