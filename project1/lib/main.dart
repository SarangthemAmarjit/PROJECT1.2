import 'dart:ui';

import 'package:flutter/material.dart';
import 'NavBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Testui(),
    );
  }
}

class Testui extends StatefulWidget {
  const Testui({Key? key}) : super(key: key);

  @override
  State<Testui> createState() => _TestuiState();
}

class _TestuiState extends State<Testui> {
  List<String> str = ['TASK 1','TASK 2','TASK 3', 'TASK 4' ];





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        title: const Text(
          "Dashboard",
          style: TextStyle(color: Colors.red),
        ),
        backgroundColor: Colors.greenAccent,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.home_filled,
                color: Colors.blueAccent,
              ))
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              child: Card(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children:  [
                              const Text(
                                'MOST PRIORITY TASK',
                                style:
                                    TextStyle(color: Colors.red, fontSize: 17),
                              ),
                              Center(
                                child: Row(
                                  children:  [
                                    Container(
                                      child: const Icon(
                                        Icons.shopping_bag,
                                        size: 40,
                                        color: Colors.red,
                                        
                                        
                                      ),
                                      padding: const EdgeInsets.all(25),
                                    ),
                                    Container(
                                      child: const Icon(
                                        Icons.rectangle_outlined,
                                        size: 40,
                                        color: Colors.grey,
                                        
                                        
                                      ),
                                      padding: const EdgeInsets.all(25)
                                    )
                                  ],

                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Text('Task Title discription')
                  ],
                ),
                
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.25,
              //width: 600,
              //height: 170,
              padding: const EdgeInsets.all(10.0),
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    child: Card(
                      child: Column(
                        children:  <Widget>[
                          Text(str[0],style: const TextStyle(color: Colors.blueAccent,fontSize: 17),)
                          
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                     width: MediaQuery.of(context).size.width*0.5,
              height: MediaQuery.of(context).size.height*0.20,
                    //width: 300,
                    //height: 130,
                    padding: const EdgeInsets.all(3.0),
                  ),
                ),
                Row(
                  children: [
                    Center(
                      child: Container(
                        child: Card(
                          child: Column(
                            children: <Widget>[
                               Text(str[1],style: const TextStyle(color: Colors.blueAccent,fontSize: 17),)
                            ],
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                         width: MediaQuery.of(context).size.width*0.5,
              height: MediaQuery.of(context).size.height*0.20,
                        //width: 300,
                        //height: 130,
                        padding: const EdgeInsets.all(3.0),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    child: Card(
                      child: Column(
                        children:  <Widget>[
                           Text(str[2],style: const TextStyle(color: Colors.blueAccent,fontSize: 17),)
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                     width: MediaQuery.of(context).size.width*0.5,
              height: MediaQuery.of(context).size.height*0.20,
                    //width: 300,
                    //height: 130,
                    padding: const EdgeInsets.all(3.0),
                  ),
                ),
                Row(
                  children: [
                    Center(
                      child: Container(
                        child: Card(
                          child: Column(
                            children:  <Widget>[
                               Text(str[3],style: const TextStyle(color: Colors.blueAccent,fontSize: 17),)
                            ],
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                         width: MediaQuery.of(context).size.width*0.5,
              height: MediaQuery.of(context).size.height*0.20,
                        //width: 300,
                        //height: 130,
                        padding: const EdgeInsets.all(3.0),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
