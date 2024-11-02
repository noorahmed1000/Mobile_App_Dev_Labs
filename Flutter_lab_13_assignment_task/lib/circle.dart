import 'package:flutter/material.dart';

void main(){
  runApp(
      MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Assignment Task"),
              backgroundColor: Colors.white,
            ),
            body:Center(
              child: Container(
                width: 600,
                height: 500,
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(300),
                ),
                child: Container(
                  width: 500,
                  height: 400,
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(200),
                  ),
                  child: Container(
                    width: 400,
                    height: 300,
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 214, 142, 47),
                      borderRadius: BorderRadius.circular(200),
                    ),
                    child: Container(
                      width: 300,
                      height: 200,
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(200),
                      ),
                      child: Container(
                        width: 200,
                        height: 100,
                        padding: EdgeInsets.all(20),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(200),
                        ),
                        child: Container(
                          width: 100,
                          height: 50,
                          padding: EdgeInsets.all(20),
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(200),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
        ),
      )
  );
}