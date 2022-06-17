// ignore_for_file: deprecated_member_use, prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables, sort_child_properties_last, use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sliver_header_delegate/sliver_header_delegate.dart';
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
      home: Cupbutandconmenu(),
    );
  }
}

class cuptextfield extends StatefulWidget {
  const cuptextfield({Key? key}) : super(key: key);

  @override
  State<cuptextfield> createState() => _cuptextfieldState();
}

class _cuptextfieldState extends State<cuptextfield> {
  bool _selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CupertinoTextField(),
          ChoiceChip(
              selected: _selected,
              label: Text('Woolha'),
              avatar: Text('W'),
              elevation: 10,
              pressElevation: 5,
              shadowColor: Colors.teal,
              onSelected: (bool selected) {
                print('Fluter is pressed');

                setState(() {
                  _selected = !_selected;
                });
              })
        ],
      ),
    );
  }
}
