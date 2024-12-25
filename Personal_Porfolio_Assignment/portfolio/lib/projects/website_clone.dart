import 'package:flutter/material.dart';

class WebsiteClone extends StatefulWidget {
  const WebsiteClone({super.key});

  @override
  State<WebsiteClone> createState() => _WebsiteCloneState();
}

class _WebsiteCloneState extends State<WebsiteClone> {
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