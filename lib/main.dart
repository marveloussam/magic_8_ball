import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Ball8()
      ),
    );


  class Ball8 extends StatefulWidget {

  
    @override
    _Ball8State createState() => _Ball8State();
  }
  
  class _Ball8State extends State<Ball8> {

    int ballNumber = 1;


    @override
    Widget build(BuildContext context) {
      return  Scaffold(

          backgroundColor: Colors.blue.shade400,

          appBar: AppBar(

            backgroundColor: Colors.blue.shade900,

            title: Text('ASK ME ANYTHING'),

          ),

          body: Center(child: TextButton(

            onPressed: _changeBall,
            
            child: Image.asset('images/ball$ballNumber.png')
            
            
            )),


        );
    }


    void _changeBall() {

      setState(() {

        ballNumber = Random().nextInt(5) + 1;


      });
      
    }


  }