import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: TextButton(
          onPressed: () {
            debugPrint('pressed');
          },
          style: TextButton.styleFrom(
            backgroundColor: const Color.fromARGB(222, 63, 76, 168),
            foregroundColor: Colors.white,
            fixedSize: const Size(288, 58),
          ),
          child: const Text(
            'Convert',
            style: TextStyle(color: Colors.white),
          ),
        ),
    );
  }
}
