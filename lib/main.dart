import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:koko2_ratkum/pages/page1.dart';
import 'package:koko2_ratkum/pages/page2.dart';
import 'package:koko2_ratkum/pages/page3.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.horizontal,
      controller: _controller,
      children: [Page1(), Page2(), Page3()],
    ));
  }
}
