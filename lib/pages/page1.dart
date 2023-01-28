import 'dart:async';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  TextEditingController _textcontroller = TextEditingController();
  int textnew = 5;
  int timeLeft = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'THIS IS TIMER',
            style: TextStyle(fontSize: 30),
          ),
          Text(
            textnew == 0 ? 'Done' : textnew.toString(),
            style: TextStyle(fontSize: 50),
          ),
          Text(textnew.toString()),
          MaterialButton(
            color: Colors.black,
            onPressed: _startCount,
            child: (Text(
              'START',
              style: TextStyle(color: Colors.white),
            )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              maxLines: 1,
              keyboardType: TextInputType.number,
              controller: _textcontroller,
              // decoration: InputDecoration(
              //     suffixIcon: IconButton(
              //       icon: Icon(
              //         Icons.clear,
              //         color: Colors.black,
              //       ),
              //       onPressed: () {
              //         _textcontroller.clear();
              //       },
              //     ),
              //     // prefix: IconButton(icon: Icon(Icons.search, color: Colors.black,), onPressed: () {  },),

              //     hintText: 'What',
              //     border: OutlineInputBorder()),
            ),
          ),
          MaterialButton(
            onPressed: () {
              setState(() {
                timeLeft = _textcontroller.hashCode;
              });
            },
            color: Colors.black,
          )
        ],
      )),
    );
  }

  void _startCount() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (textnew > 0) {
        setState(() {
          textnew--;
        });
      } else {
        timer.cancel();
      }
      ;
    });
  }
}
