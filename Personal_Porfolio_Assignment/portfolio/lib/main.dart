import 'package:flutter/material.dart';
import 'package:portfolio/screens/certificate.dart';
import 'package:portfolio/screens/educational_info.dart';
import 'package:portfolio/screens/home.dart';
import 'package:portfolio/screens/interest.dart';
import 'package:portfolio/screens/personal_info.dart';
import 'package:portfolio/screens/projects.dart';
import 'package:portfolio/screens/skills.dart';
import 'package:portfolio/screens/work_experience.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
       home: const Home(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(

        backgroundColor: Colors.blueAccent,

        title: Center(
          child: Text(widget.title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'roboto',
          ),
          ),
        ),
      ),
      body: Center(
        child: ListView(
          children: [
            const Padding(padding:  EdgeInsets.all(20)),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 50),
                  backgroundColor: Colors.blueAccent
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PersonalInfo()),
                  );
                },
                child: const Text(' Click To View Personal Info ',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'roboto',
                ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 50),
                  backgroundColor: Colors.blueAccent
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const EducationalInfo()),
                  );
                },
                child: const Text(' Click To View Education Info ',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'roboto',
                ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 50),
                  backgroundColor: Colors.blueAccent
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const WorkExperience()),
                  );
                },
                child: const Text(' Click To View Work Experience ',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'roboto',
                ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 50),
                  backgroundColor: Colors.blueAccent
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Projects()),
                  );
                },
                child: const Text(' Click To View My Projects ',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'roboto',
                ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 50),
                  backgroundColor: Colors.blueAccent
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Skills()),
                  );
                },
                child: const Text(' Click To View My Skills ',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'roboto',
                ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 50),
                  backgroundColor: Colors.blueAccent
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Certificate()),
                  );
                },
                child: const Text(' Click To View My Certifications ',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'roboto',
                ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 50),
                  backgroundColor: Colors.blueAccent
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Interest()),
                  );
                },
                child: const Text(' Click To View My Interests ',
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
      )
    );
  }
}
