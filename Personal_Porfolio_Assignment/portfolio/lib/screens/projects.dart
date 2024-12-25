import 'package:flutter/material.dart';
import 'package:portfolio/projects/calculator_project.dart';
import 'package:portfolio/projects/full_stack_web_app.dart';
import 'package:portfolio/projects/hospital_management.dart';
import 'package:portfolio/projects/offine_store.dart';
import 'package:portfolio/projects/solar_tracking_system.dart';
import 'package:portfolio/projects/tic_tac_toe.dart';
import 'package:portfolio/projects/voice_control_car.dart';
import 'package:portfolio/projects/website_clone.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.black,
      appBar: AppBar(
        title: const Center(
            child: Text(
              'Projects Info',
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
      body: Center(
        child: ListView(
          children: [
            const Padding(padding: EdgeInsets.all(20)),
           Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(200, 50),
                      backgroundColor: Colors.blueAccent
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const OfflineStore()),
                      );
                    },
                    child: const Text(' Click To View Offline Web Store Project In C++ ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'roboto',
                    ),
                    ),
                  ),
                ),
             const SizedBox(height: 30),
             Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(200, 50),
                      backgroundColor: Colors.blueAccent
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const CalculatorProject()),
                      );
                    },
                    child: const Text(' Click To View Calculator Project In C++ ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'roboto',
                    ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
             Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(200, 50),
                      backgroundColor: Colors.blueAccent
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const TicTacToe()),
                      );
                    },
                    child: const Text(' Click To View Tic Tac Toe Project In C++ ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'roboto',
                    ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
             Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(200, 50),
                      backgroundColor: Colors.blueAccent
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HospitalManagement()),
                      );
                    },
                    child: const Text(' Click To View Hospital Management Syastem In C++ ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'roboto',
                    ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
             Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(200, 50),
                      backgroundColor: Colors.blueAccent
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const VoiceControlCar()),
                      );
                    },
                    child: const Text(' Click To View Voice Control Car ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'roboto',
                    ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(200, 50),
                      backgroundColor: Colors.blueAccent
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const WebsiteClone()),
                      );
                    },
                    child: const Text(' Click To View Clone a Website ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'roboto',
                    ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(200, 50),
                      backgroundColor: Colors.blueAccent
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SolarTrackingSystem()),
                      );
                    },
                    child: const Text(' Click To View Solar Tracking System ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'roboto',
                    ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(200, 50),
                      backgroundColor: Colors.blueAccent
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const FullStackWebApp()),
                      );
                    },
                    child: const Text(' Click To View Full Stack Web Development ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'roboto',
                    ),
                    ),
                  ),
                ),                                                    
          ],
        ),
      ),
    );
  }
}