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
      home: sliverfill(),
    );
  }
}

class sliverfill extends StatefulWidget {
  const sliverfill({Key? key}) : super(key: key);

  @override
  State<sliverfill> createState() => _sliverfillState();
}

class _sliverfillState extends State<sliverfill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              height: 100,
            ),
          ),
           SliverToBoxAdapter(
            child: Container(
              height: 100,
            ),
          ),

          SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              color: Colors.brown[200],
              child: Icon(
                Icons.sentiment_very_satisfied,
                color: Colors.brown[800],
                size: 30,
              ),
            ),
          ),
                 ],
      ),
    );
  }
}
