import 'package:flutter/material.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Assignment UI'),
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
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        // Scrollable Column
        child: Column(
          children: [
            SingleChildScrollView(
              // Horizontal Scroll for Row
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          width: 300,
                          height: 400,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.red,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black
                                    .withOpacity(0.2), // Shadow color
                                offset: const Offset(0, 4), // Shadow offset
                                blurRadius: 10, // Shadow blur radius
                                spreadRadius: 1, // Shadow spread radius
                              ),
                            ],
                          ),
                          child: const Column(
                            children: [
                              Center(
                                child: Text(
                                  'Cristiano Ronaldo',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Cristiano Ronaldo is a Portuguese footballer renowned for his incredible athleticism, '
                                  'goal-scoring ability, and versatility on the field. '
                                  'Widely regarded as one of the greatest players in football history, '
                                  'he has won numerous awards and set records with clubs like Real Madrid, '
                                  'Manchester United, and Juventus.',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                  softWrap: true,
                                  maxLines: null,
                                  overflow: TextOverflow.visible,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                      Container(
                        width: 300,
                        height: 100,
                        child: Container(
                          width: 200,
                          height: 100,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.red,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black
                                    .withOpacity(0.2), // Shadow color
                                offset: const Offset(0, 4), // Shadow offset
                                blurRadius: 10, // Shadow blur radius
                                spreadRadius: 1, // Shadow spread radius
                              ),
                            ],
                          ),
                          child: const Column(
                            children: [
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.home,
                                        size: 50,
                                        color: Colors.red,
                                      ),
                                      SizedBox(width: 40),
                                      Icon(
                                        Icons.phone,
                                        size: 50,
                                        color: Colors.red,
                                      ),
                                      SizedBox(width: 40),
                                      Icon(
                                        Icons.contacts,
                                        size: 50,
                                        color: Colors.red,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'Home',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 30,
                                    height: 30,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(1),
                                    child: Text(
                                      'Phone',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 30, height: 30),
                                  Padding(
                                    padding: EdgeInsets.all(1),
                                    child: Text(
                                      'Contact',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 30, height: 30),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          border: Border.all(
                                  color: Colors.red,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black
                                      .withOpacity(0.2), // Shadow color
                                  offset: const Offset(0, 4), // Shadow offset
                                  blurRadius: 10, // Shadow blur radius
                                  spreadRadius: 1, // Shadow spread radius
                                ),
                              ],
                        ),
                         child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.facebook,
                                    size: 50,
                                    color: Colors.red,
                                  ),
                                  SizedBox(width: 20),
                                  Text('Facebook',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                      Icon(
                                        Icons.mail,
                                        size: 50,
                                        color: Colors.red,
                                      ),
                                      SizedBox(width: 20),
                                      Text('Google',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                      Icon(
                                        Icons.favorite,
                                        size: 50,
                                        color: Colors.red,
                                      ),
                                      SizedBox(width: 20),
                                      Text('Like',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      ),
                                ],
                              ),
                            ],
                          ),
                       ),
                     )
                    ],
                  ),
                  SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 300,
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black
                                    .withOpacity(0.2), // Shadow color
                                offset: const Offset(0, 4), // Shadow offset
                                blurRadius: 10, // Shadow blur radius
                                spreadRadius: 1, // Shadow spread radius
                              ),
                            ],
                          ),
                          child: Image.asset('assets/images/pic1.jpg'),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            width: 200,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.red,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black
                                      .withOpacity(0.2), // Shadow color
                                  offset: const Offset(0, 4), // Shadow offset
                                  blurRadius: 10, // Shadow blur radius
                                  spreadRadius: 1, // Shadow spread radius
                                ),
                              ],
                            ),
                            child: const Center(
                              child: Text(
                                'Cristiano Ronaldo',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            width: 300,
                            height: 400,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.red,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black
                                      .withOpacity(0.2), // Shadow color
                                  offset: const Offset(0, 4), // Shadow offset
                                  blurRadius: 10, // Shadow blur radius
                                  spreadRadius: 1, // Shadow spread radius
                                ),
                              ],
                            ),
                            child: const Center(
                              child: Text(
                                'Cristiano Ronaldo is a Portuguese footballer renowned for his incredible athleticism, '
                                'goal-scoring ability, and versatility on the field. '
                                'Widely regarded as one of the greatest players in football history, '
                                'he has won numerous awards and set records with clubs like Real Madrid, '
                                'Manchester United, and Juventus.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                                softWrap: true,
                                maxLines: null,
                                overflow: TextOverflow.visible,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
