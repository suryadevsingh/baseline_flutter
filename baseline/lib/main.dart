import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Text("baseline"),),
          body: Center(
            child: Container(
              height: 120,
              width: 120,
              color: Colors.lightGreenAccent,
              child: Baseline(
                baseline: 4,
                  baselineType: TextBaseline.alphabetic,
                child: Container(
                  height: 220,
                  width: 200,
                  color: Colors.red,
                  child: Baseline(
                    baseline: 20,
                    baselineType: TextBaseline.ideographic,
                    child: Container(
                      height: 50,
                      width: 50,
                      color: Colors.deepPurple,
                    ),
                  ),

                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
