import 'package:flutter/material.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 125, 230, 191),
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Personal Info',
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
        body: const Padding(
          padding:  EdgeInsets.all(20),
          child: Column(
            children: [
               Row(
                children: [
                  Text(
                    'NOOR AHMED',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'roboto',
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.all(20),
                  //   child: Column(
                  //     crossAxisAlignment: CrossAxisAlignment.end,
                  //     mainAxisAlignment: MainAxisAlignment.end,
                  //     children: [
                  //       Container(
                  //         width: 200, // Make it as wide as possible
                  //         height:
                  //             100, // Set a specific height (you can adjust this value)
                  //         decoration: const BoxDecoration(
                  //           image: DecorationImage(
                  //             image: AssetImage('images/pic1.jpg'),
                  //             fit: BoxFit
                  //                 .cover, // Ensures the image covers the entire container
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
               SizedBox(
                height: 10,
              ),
               Row(
                children: [
                  Text(
                    'Full Stack Developer',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'roboto',
                    ),
                  ),
                ],
              ),
               SizedBox(
                height: 15,
              ),
               Row(
                children: [
                  Flexible(
                    child: Text(
                      "Highly motivated and detail-oriented Full Stack Developer with a strong foundation in React, MySQL, Django, and mobile app development. Excellent problem-solving skills and a keen eye for functionality and design. Proven ability to create responsive, user-friendly applications through personal projects and professional experience. Passionate about staying current with industry trends and continuously enhancing my skill set to deliver high-quality software solutions. Seeking a remote or on-site position to apply and expand my technical expertise in a dynamic and innovative environment.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'roboto',
                      ),
                      softWrap: true,
                    ),
                  ),
                ],
              ),
               SizedBox(
                height: 40,
              ),
               Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.black,
                    size: 50,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.phone,
                    color: Colors.black,
                    size: 50,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.location_on,
                    color: Colors.black,
                    size: 50,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
