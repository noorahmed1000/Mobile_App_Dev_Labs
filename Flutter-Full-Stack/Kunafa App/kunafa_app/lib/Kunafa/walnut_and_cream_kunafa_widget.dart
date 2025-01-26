import 'package:flutter/material.dart';

class WalnutAndCreamKunafaWidget extends StatefulWidget {
  const WalnutAndCreamKunafaWidget({super.key});

  @override
  State<WalnutAndCreamKunafaWidget> createState() => _WalnutAndCreamKunafaWidgetState();
}

class _WalnutAndCreamKunafaWidgetState extends State<WalnutAndCreamKunafaWidget> {
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
                              child: Image.asset("assets/images/pic22.jpg",
                              fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10,),
                          const Text('Walnut And Cream Kunafa',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontFamily: "edu",
                          ),
                          ),
                          const SizedBox(height: 10,),
                          const Text("Walnut and Cream Kunafa is a decadent dessert featuring a rich cream filling and crunchy walnut pieces, all encased in crispy kunafa dough and drenched in sweet syrup.",
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