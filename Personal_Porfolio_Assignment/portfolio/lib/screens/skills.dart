import 'package:flutter/material.dart';

class Skills extends StatefulWidget {
  const Skills({super.key});

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 125, 230, 191),
      appBar: AppBar(
        title: const Center(
          child:  Text(
            "Skills",
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children:  [
              SizedBox(
                width: double.infinity,
                height: 35,
                child: Row(
                  children: [
                    // Blue section (80%)
                    Expanded(
                      flex: 9,
                      child: Container(
                        color: Colors.blueAccent,
                        child: const Center(
                          child: Text(
                            "HTML",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // White section (20%)
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                height: 35,
                child: Row(
                  children: [
                    // Blue section (80%)
                    Expanded(
                      flex: 8,
                      child: Container(
                        color: Colors.blueAccent,
                        child: const Center(
                          child: Text(
                            "CSS",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // White section (20%)
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                height: 35,
                child: Row(
                  children: [
                    // Blue section (80%)
                    Expanded(
                      flex: 6,
                      child: Container(
                        color: Colors.blueAccent,
                        child: const Center(
                          child: Text(
                            "JavaScript",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // White section (20%)
                    Expanded(
                      flex: 4,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                height: 35,
                child: Row(
                  children: [
                    // Blue section (80%)
                    Expanded(
                      flex: 9,
                      child: Container(
                        color: Colors.blueAccent,
                        child: const Center(
                          child: Text(
                            "C++",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // White section (20%)
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                height: 35,
                child: Row(
                  children: [
                    // Blue section (80%)
                    Expanded(
                      flex: 7,
                      child: Container(
                        color: Colors.blueAccent,
                        child: const Center(
                          child: Text(
                            "Python",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // White section (20%)
                    Expanded(
                      flex: 3,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                height: 35,
                child: Row(
                  children: [
                    // Blue section (80%)
                    Expanded(
                      flex: 8,
                      child: Container(
                        color: Colors.blueAccent,
                        child: const Center(
                          child: Text(
                            "ES6",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // White section (20%)
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                height: 35,
                child: Row(
                  children: [
                    // Blue section (80%)
                    Expanded(
                      flex: 7,
                      child: Container(
                        color: Colors.blueAccent,
                        child: const Center(
                          child: Text(
                            "React",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // White section (20%)
                    Expanded(
                      flex: 3,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                height: 35,
                child: Row(
                  children: [
                    // Blue section (80%)
                    Expanded(
                      flex: 8,
                      child: Container(
                        color: Colors.blueAccent,
                        child: const Center(
                          child: Text(
                            "Tailwind CSS",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // White section (20%)
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                height: 35,
                child: Row(
                  children: [
                    // Blue section (80%)
                    Expanded(
                      flex: 8,
                      child: Container(
                        color: Colors.blueAccent,
                        child: const Center(
                          child: Text(
                            "MySQL",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // White section (20%)
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                height: 35,
                child: Row(
                  children: [
                    // Blue section (80%)
                    Expanded(
                      flex: 7,
                      child: Container(
                        color: Colors.blueAccent,
                        child: const Center(
                          child: Text(
                            "AWS",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // White section (20%)
                    Expanded(
                      flex: 3,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                height: 35,
                child: Row(
                  children: [
                    // Blue section (80%)
                    Expanded(
                      flex: 8,
                      child: Container(
                        color: Colors.blueAccent,
                        child: const Center(
                          child: Text(
                            "GitHub",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // White section (20%)
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                height: 35,
                child: Row(
                  children: [
                    // Blue section (80%)
                    Expanded(
                      flex: 6,
                      child: Container(
                        color: Colors.blueAccent,
                        child: const Center(
                          child: Text(
                            "Django",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // White section (20%)
                    Expanded(
                      flex: 4,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                height: 35,
                child: Row(
                  children: [
                    // Blue section (80%)
                    Expanded(
                      flex: 9,
                      child: Container(
                        color: Colors.blueAccent,
                        child: const Center(
                          child: Text(
                            "Flutter",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // White section (20%)
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                height: 35,
                child: Row(
                  children: [
                    // Blue section (80%)
                    Expanded(
                      flex: 9,
                      child: Container(
                        color: Colors.blueAccent,
                        child: const Center(
                          child: Text(
                            "CISCO",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // White section (20%)
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                height: 35,
                child: Row(
                  children: [
                    // Blue section (80%)
                    Expanded(
                      flex: 9,
                      child: Container(
                        color: Colors.blueAccent,
                        child: const Center(
                          child: Text(
                            "SEO",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // White section (20%)
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
