import 'package:flutter/material.dart';
import 'package:kunafa_app/Kunafa/heaven_mud_kunafa_widget.dart';
// import 'package:kunafa_app/Kunafa/labanese_kunafa_widget.dart';
import 'package:kunafa_app/Kunafa/pasha_kunafa_widget.dart';
import 'package:kunafa_app/Kunafa/pistachio_and_cheese_kunafa_widget.dart';
import 'package:kunafa_app/Kunafa/pistachio_kunafa_widget.dart';
import 'package:kunafa_app/Kunafa/turkish_cheese_kunafa_widget.dart';
import 'package:kunafa_app/Kunafa/turkish_cheese_widget.dart';
import 'package:kunafa_app/Kunafa/turkish_cream_kunafa_widget.dart';
import 'package:kunafa_app/Kunafa/two_in_one_kunafa_widget.dart';
import 'package:kunafa_app/Kunafa/two_in_one_nuts_kunafa_widget.dart';
import 'package:kunafa_app/Kunafa/walnut_and_cream_kunafa_widget.dart';
import 'package:kunafa_app/Kunafa/walnut_crush_kunafa_widget.dart';
import 'package:kunafa_app/home_page.dart';

class KunafaMenuPage extends StatelessWidget {
  const KunafaMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Kunafa Page",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class Kunafa extends StatefulWidget {
  const Kunafa({super.key});

  @override
  State<Kunafa> createState() => _KunafaState();
}

class _KunafaState extends State<Kunafa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const  Color(0xffefdcac),
      appBar: AppBar(
        title:const Center(
          child: Text("Welcome To Kunafa Menu",
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
        children:const [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // LabaneseKunafaWidget(),
                  HeavenMudKunafaWidget(),
                  WalnutCrushKunafaWidget(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TwoInOneKunafaWidget(),
                  TurkishCheeseKunafaWidget(),
                  TwoInOneNutsKunafaWidget(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TurkishCreamKunafaWidget(),
                  PashaKunafaWidget(),
                  TurkishCheeseWidget(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  WalnutAndCreamKunafaWidget(),
                  PistachioKunafaWidget(),
                  PistachioAndCheeseKunafaWidget(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}