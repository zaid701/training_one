// ignore_for_file: deprecated_member_use, prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables, sort_child_properties_last, use_key_in_widget_constructors

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:training_one/custom.dart';
import 'package:training_one/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: changabltheme().gettheme(),
      home: hero(),
    );
  }
}

class hero extends StatefulWidget {
  const hero({Key? key}) : super(key: key);

  @override
  State<hero> createState() => _heroState();
}

class _heroState extends State<hero> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Hero(
          tag: "t1",
          transitionOnUserGestures: true,

          child: IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (builder) => hero2()));
            },
          )),
    );
  }
}

class hero2 extends StatefulWidget {
  const hero2({Key? key}) : super(key: key);

  @override
  State<hero2> createState() => _hero2State();
}

class _hero2State extends State<hero2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Hero(
          tag: "t1",
          child: Icon(
            Icons.add,
            size: 100,
          ),
          placeholderBuilder:(context,size,widget)=>Container()
          ,),
    );
  }
}
