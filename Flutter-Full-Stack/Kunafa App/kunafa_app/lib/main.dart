import 'package:flutter/material.dart';
import 'package:kunafa_app/home_page.dart';
// import 'package:kunafa_app/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My App',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class Pictures extends StatefulWidget {
  const Pictures({super.key});

  @override
  State<Pictures> createState() => _PicturesState();
}

class _PicturesState extends State<Pictures> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFefdcac),
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Welcome To Kunafa Gallery',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontFamily: "edu",
            ),
          ),
        ),
        backgroundColor: const Color(0xff92b423),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: SizedBox(
                          width: 200,
                          height: 200,
                          child: Image.asset(
                            "assets/images/pic1.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: SizedBox(
                          width: 200,
                          height: 200,
                          child: Image.asset(
                            "assets/images/pic2.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: SizedBox(
                          width: 200,
                          height: 200,
                          child: Image.asset(
                            "assets/images/pic3.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: SizedBox(
                          width: 200,
                          height: 200,
                          child: Image.asset(
                            "assets/images/pic4.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: SizedBox(
                      width: 200,
                      height: 200,
                      child: Image.asset(
                        "assets/images/pic5.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: SizedBox(
                      width: 200,
                      height: 200,
                      child: Image.asset(
                        "assets/images/pic6.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: SizedBox(
                      width: 200,
                      height: 200,
                      child: Image.asset(
                        "assets/images/pic7.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: SizedBox(
                      width: 200,
                      height: 200,
                      child: Image.asset(
                        "assets/images/pic8.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: SizedBox(
                      width: 200,
                      height: 200,
                      child: Image.asset(
                        "assets/images/pic9.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: SizedBox(
                      width: 200,
                      height: 200,
                      child: Image.asset(
                        "assets/images/pic10.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: SizedBox(
                      width: 200,
                      height: 200,
                      child: Image.asset(
                        "assets/images/pic11.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: SizedBox(
                      width: 200,
                      height: 200,
                      child: Image.asset(
                        "assets/images/pic12.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: SizedBox(
                      width: 200,
                      height: 200,
                      child: Image.asset(
                        "assets/images/pic13.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: SizedBox(
                      width: 200,
                      height: 200,
                      child: Image.asset(
                        "assets/images/pic14.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: SizedBox(
                      width: 200,
                      height: 200,
                      child: Image.asset(
                        "assets/images/pic15.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: SizedBox(
                      width: 200,
                      height: 200,
                      child: Image.asset(
                        "assets/images/pic16.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: SizedBox(
                      width: 200,
                      height: 200,
                      child: Image.asset(
                        "assets/images/pic17.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: SizedBox(
                      width: 200,
                      height: 200,
                      child: Image.asset(
                        "assets/images/pic18.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: SizedBox(
                      width: 200,
                      height: 200,
                      child: Image.asset(
                        "assets/images/pic19.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: SizedBox(
                      width: 200,
                      height: 200,
                      child: Image.asset(
                        "assets/images/pic20.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: SizedBox(
                      width: 200,
                      height: 200,
                      child: Image.asset(
                        "assets/images/pic21.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: SizedBox(
                      width: 200,
                      height: 200,
                      child: Image.asset(
                        "assets/images/pic22.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: SizedBox(
                      width: 200,
                      height: 200,
                      child: Image.asset(
                        "assets/images/pic23.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: SizedBox(
                      width: 200,
                      height: 200,
                      child: Image.asset(
                        "assets/images/pic24.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: SizedBox(
                      width: 200,
                      height: 200,
                      child: Image.asset(
                        "assets/images/pic25.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: SizedBox(
                      width: 200,
                      height: 200,
                      child: Image.asset(
                        "assets/images/pic26.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
