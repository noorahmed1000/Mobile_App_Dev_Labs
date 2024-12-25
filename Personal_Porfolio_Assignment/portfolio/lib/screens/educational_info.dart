import 'package:flutter/material.dart';

class EducationalInfo extends StatefulWidget {
  const EducationalInfo({super.key});

  @override
  State<EducationalInfo> createState() => _EducationalInfoState();
}

class _EducationalInfoState extends State<EducationalInfo> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 125, 230, 191),
      appBar: AppBar(
        title: const Center(
            child: Text(
              'Educational Info',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'roboto',
              ),
            ),
          ),
        backgroundColor: Colors.blueAccent,
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Column(
                  children: [
                    Text('BS-IET',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'roboto',
                      ),
                    ),
                    Text('University of Lahore',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'roboto',
                      ),
                    ),
                    Text('Year: 2022-Present',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'roboto',
                      ),
                    ),
                    Text('Current CGPA: 3.84',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'roboto',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
               Column(
                children: [
                  Text('FSc Pre-Engineering',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'roboto',
                    ),
                  ),
                  Text('Unique College',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'roboto',
                    ),
                  ),
                  Text('Year: 2013-2014',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'roboto',
                    ),
                  ),
                  Text('Marks: 63%',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'roboto',
                    ),
                  ),
                ],
               )
              ],
            ),
          )
        ],
      )
    );
  }
}