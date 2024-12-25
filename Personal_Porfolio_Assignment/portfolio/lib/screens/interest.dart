import 'package:flutter/material.dart';

class Interest extends StatefulWidget {
  const Interest({super.key});

  @override
  State<Interest> createState() => _InterestState();
}

class _InterestState extends State<Interest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 125, 230, 191),
      appBar: AppBar(
        title: const Center(
          child:  Text(
            "Interests",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto',
            ),
          ),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Center(
                  child: Container(
                    width: 200,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(
                        color: Colors.blueAccent,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        'Technology',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Center(
                  child: Container(
                    width: 200,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(
                        color: Colors.blueAccent,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        'Travel',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Center(
                  child: Container(
                    width: 200,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(
                        color: Colors.blueAccent,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        'Reading Books',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Center(
                  child: Container(
                    width: 200,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(
                        color: Colors.blueAccent,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        'Coding',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Center(
                  child: Container(
                    width: 200,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(
                        color: Colors.blueAccent,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        'Music and Arts',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}