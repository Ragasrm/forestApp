import 'dart:async';


import 'package:ForestSpiApp/screens/DBoard.dart';
import 'package:ForestSpiApp/screens/dashboard.dart';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {

    Timer(Duration(seconds: 5), ()=>Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (BuildContext context) => HomePage()
    )));


    // return Scaffold(
    //   body: Container(
       
    //    child: Column(
    //      children: [
    //        SizedBox(height: 250.0,),
    //        Image(image: AssetImage('assets/img/logo1.png'), height:250.0),
    //         Center(child: Text('Welcome to Forest Livingthing...!', style: TextStyle(fontSize: 25.0),)),
    //      ],
    //    ),
    //   ),
      
    // );


    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img/Forest.jpg'),
                fit: BoxFit.none,
                
              ),
            ),
          ),
          Positioned(
            bottom: 48.0,
            left: 10.0,
            right: 10.0,
            child: Card(
              elevation: 8.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "FRCI",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}