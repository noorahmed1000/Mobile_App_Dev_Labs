import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  const InputField({super.key});

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {

  var border = const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(50)),
    borderSide: BorderSide(
      color: Color.fromARGB(199, 228, 188, 11),
      width: 2.0,
      style: BorderStyle.solid,
      strokeAlign: BorderSide.strokeAlignOutside,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Please enter amount in rupees",
              hintStyle: const TextStyle(color: Colors.white),
              prefixIcon: const Icon(Icons.monetization_on),
              filled: true,
              fillColor: const Color.fromARGB(222, 0, 216, 249),
              focusedBorder: border,
              enabledBorder: border,
            ),
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
          ),
        )
    );
  }
}
