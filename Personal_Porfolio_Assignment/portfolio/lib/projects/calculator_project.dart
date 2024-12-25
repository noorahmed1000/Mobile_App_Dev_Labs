import 'package:flutter/material.dart';

class CalculatorProject extends StatefulWidget {
  const CalculatorProject({super.key});

  @override
  State<CalculatorProject> createState() => _CalculatorProjectState();
}

class _CalculatorProjectState extends State<CalculatorProject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 125, 230, 191),
      appBar: AppBar(
        title: const Text(
          "Calculator Project",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto',
          ),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: const Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Project Overview:',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                ),
              ),
              Text(
                'The Calculator project allows users to perform basic arithmetic operations, such as addition, subtraction, multiplication, and division. The application provides a simple interface for users to input numbers and select the desired operation. The calculator then displays the result of the operation, allowing users to perform multiple calculations in a single session.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Roboto',
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Key Features:',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                ),
              ),
              Text(
                '1. Basic arithmetic operations: The calculator supports addition, subtraction, multiplication, and division of numbers.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Roboto',
                ),
              ),
              Text(
                '2. User-friendly interface: The calculator provides a simple and intuitive interface for users to input numbers and select the desired operation.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Roboto',
                ),
              ),
              Text(
                '3. Real-time results: The calculator displays the result of the selected operation in real-time, allowing users to perform multiple calculations in a single session.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Roboto',
                ),
              ),
              Text(
                '4. Error handling: The calculator handles invalid input and provides appropriate error messages to users.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Roboto',
                ),
              ),
              Text(
                '5. Clear button: The calculator provides a clear button to reset the calculator and start a new calculation.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Roboto',
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Core Technologies:',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                ),
              ),
              Text(
                '''1. Programming Language: C++
2. IDE: Visual Studio Code''',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Roboto',
                ),
              ),
              SizedBox(height: 20),
              Text(
                'C++ Calculator Code:',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                ),
              ),
              SizedBox(height: 10),
              Text(
                '''# C++ Calculator Code

#include <iostream>
using namespace std;

int main() {
    double num1, num2, result;
    char operation;

    cout << "Enter first number: ";
    cin >> num1;

    cout << "Enter an operator (+, -, *, /): ";
    cin >> operation;

    cout << "Enter second number: ";
    cin >> num2;

    switch (operation) {
        case '+':
            result = num1 + num2;
            break;
        case '-':
            result = num1 - num2;
            break;
        case '*':
            result = num1 * num2;
            break;
        case '/':
            if (num2 != 0) {
                result = num1 / num2;
            } else {
                cout << "Error! Division by zero.";
                return 1;
            }
            break;
        default:
            cout << "Invalid operator!";
            return 1;
    }

    cout << "Result: " << result << endl;
    return 0;
}
''',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Roboto',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
