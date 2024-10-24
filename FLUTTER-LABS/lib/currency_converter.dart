import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyConverter(),
    );
  }
}

class CurrencyConverter extends StatelessWidget {
  const CurrencyConverter({super.key});

  @override
  Widget build(BuildContext context) {
    const  border = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(50)),
                    borderSide: BorderSide(
                      color: Color.fromARGB(199, 228, 188, 11),
                      width: 2.0,
                      style: BorderStyle.solid,
                      strokeAlign: BorderSide.strokeAlignOutside,
                    ),
    );
    return const Scaffold(
      backgroundColor:Color.fromARGB(200, 166, 78, 150),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'NOOR AHMED',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.bold,
              fontSize: 40,
            ),
            
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Please enter amount in rupees",
                hintStyle: TextStyle(color: Colors.white),
                prefixIcon: Icon(
                  Icons.monetization_on,
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(222, 0, 216, 249),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    borderSide: BorderSide(
                      color: Color.fromARGB(199, 228, 188, 11),
                      width: 2.0,
                      style: BorderStyle.solid,
                      strokeAlign: BorderSide.strokeAlignOutside,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    borderSide: BorderSide(
                      color: Color.fromARGB(199, 228, 188, 11),
                      width: 2.0,
                      style: BorderStyle.solid,
                      strokeAlign: BorderSide.strokeAlignOutside,
                    )
                  )
              ),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
            ),
          );
          TextButton(
            onPressed: (){
              debugPrint('pressed')
            },
            style: const ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Color.fromARGB(222, 63, 76, 168)),
              foregroundColor: WidgetStatePropertyAll(Color.fromARGB(322, 45, 190, 89)),
              fixedSize: WidgetStatePropertyAll(Size(288, 58)),
            ),
            child: const Text(
            'Convert',
            style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
