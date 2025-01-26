import 'package:flutter/material.dart';
import 'package:kunafa_app/admin_panel.dart';
import 'package:kunafa_app/kunafa_menu_page.dart';
import 'package:kunafa_app/login.dart';
import 'package:kunafa_app/main.dart';
import 'package:kunafa_app/menu_page.dart';
import 'package:kunafa_app/signup.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFefdcac),
      appBar: AppBar(
        backgroundColor: const Color(0xff92b423),
        title: const Center(
            child: Text(
          'Welcome To Home Page',
          style: TextStyle(
            fontFamily: "edu",
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        )),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  width: 150,
                  height: 70,
                  
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF92b423),
                      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: const BorderSide(
              color: Colors.black, // Border color
              width: 3, // Border thickness (adjust the width as needed)
            ),
         // Makes the corners square
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Pictures()),
                      );
                    },
                    child: const Text(
                      'Click To See Kunafa Gallery',
                      textAlign:
                          TextAlign.center, // Centers text within the square
                      style: TextStyle(
                        fontSize:
                            14, // Adjusted for better fit within the square button
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: "edu",
                      ),
                    ),
                  ),
                )),
            const SizedBox(
              height: 30,
            ),
            Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  width: 150,
                  height: 70,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF92b423),
                      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: const BorderSide(
              color: Colors.black, // Border color
              width: 3, // Border thickness (adjust the width as needed)
            ), // Ensures square corners
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Menu()),
                      );
                    },
                    child: const Text(
                      'Click To See Baklawa Menu',
                      textAlign:
                          TextAlign.center, // Aligns the text inside the button
                      style: TextStyle(
                        fontSize: 14, // Reduced for better text fitting
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: "edu",
                      ),
                    ),
                  ),
                )),
            const SizedBox(
              height: 30,
            ),
            Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  width: 150,
                  height: 70,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF92b423),
                      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: const BorderSide(
              color: Colors.black, // Border color
              width: 3, // Border thickness (adjust the width as needed)
            ), // Ensures square corners
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const KunafaMenuPage()),
                      );
                    },
                    child: const Text(
                      'Click To See Kunafa Menu',
                      textAlign: TextAlign.center, // Centers the text
                      style: TextStyle(
                        fontSize: 14, // Adjusted font size for better fit
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: "edu",
                      ),
                    ),
                  ),
                )),
                Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  width: 150,
                  height: 70,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF92b423),
                      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: const BorderSide(
              color: Colors.black, // Border color
              width: 3, // Border thickness (adjust the width as needed)
            ), // Ensures square corners
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginPage()),
                      );
                    },
                    child: const Text(
                      'Click To Login',
                      textAlign: TextAlign.center, // Centers the text
                      style: TextStyle(
                        fontSize: 14, // Adjusted font size for better fit
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: "edu",
                      ),
                    ),
                  ),
                )),
                Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  width: 150,
                  height: 70,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF92b423),
                      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: const BorderSide(
              color: Colors.black, // Border color
              width: 3, // Border thickness (adjust the width as needed)
            ), // Ensures square corners
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Signup()),
                      );
                    },
                    child: const Text(
                      'Click To Sign Up',
                      textAlign: TextAlign.center, // Centers the text
                      style: TextStyle(
                        fontSize: 14, // Adjusted font size for better fit
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: "edu",
                      ),
                    ),
                  ),
                )),
                Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  width: 150,
                  height: 70,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF92b423),
                      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: const BorderSide(
              color: Colors.black, // Border color
              width: 3, // Border thickness (adjust the width as needed)
            ), // Ensures square corners
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const AdminPanel()),
                      );
                    },
                    child: const Text(
                      'Click To See Admin Page',
                      textAlign: TextAlign.center, // Centers the text
                      style: TextStyle(
                        fontSize: 14, // Adjusted font size for better fit
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: "edu",
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
