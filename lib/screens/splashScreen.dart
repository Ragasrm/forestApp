import 'dart:async';
import 'package:ForestSpiApp/screens/DBoard.dart';
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


    return Scaffold(
      body: Container(
       
       child: Column(
         children: [
           SizedBox(height: 250.0,),
           Image(image: AssetImage('assets/img/logo1.png'), height:250.0),
            Center(child: Text('Welcome to Forest Livingthing...!', style: TextStyle(fontSize: 25.0),)),
         ],
       ),
      ),
      
    );
  }
}