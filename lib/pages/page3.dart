import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              color: Colors.lightGreen,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.green,
            ),
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.lightGreen[100], shape: BoxShape.circle),
            ),
            Container(
              height: 50,
              width: 50,
              decoration:
                  BoxDecoration(color: Colors.green, shape: BoxShape.rectangle),
            ),
            Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                  color: Colors.lightGreen[100], shape: BoxShape.circle),
            ),
          ],
        ),
      ),
    );
  }
}
