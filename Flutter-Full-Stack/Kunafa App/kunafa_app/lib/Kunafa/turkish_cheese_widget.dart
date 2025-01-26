import 'package:flutter/material.dart';

class TurkishCheeseWidget extends StatefulWidget {
  const TurkishCheeseWidget({super.key});

  @override
  State<TurkishCheeseWidget> createState() => _TurkishCheeseWidgetState();
}

class _TurkishCheeseWidgetState extends State<TurkishCheeseWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container( 
                      height: 550,
                      width: 300,
                      decoration: BoxDecoration(
                        color:const  Color(0xff92b423),
                        border: Border.all(
                          color: Colors.black,
                          width: 3.0,
                        ),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 10,
                            offset: const Offset(5, 5)
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12),
                            child: SizedBox(
                              width: 200,
                              height: 200,
                              child: Image.asset("assets/images/pic21.jpg",
                              fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10,),
                          const Text('Turkish Cheese',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontFamily: "edu",
                          ),
                          ),
                          const SizedBox(height: 10,),
                          const Text("Turkish Cheese Kunafa is a savory-sweet dessert made with melted Turkish cheese, nestled between crispy kunafa dough and soaked in fragrant sugar syrup.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontFamily: "edu",  
                          ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:const  Color(0xFFefdcac),
                              ),
                              onPressed: () {
                                print('The Item is Added to cart');
                              },
                              child:const Text('Add To Cart',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontFamily: "edu",
                              ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
  }
}