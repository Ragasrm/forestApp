import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';


class FCRIScreenDetails extends StatefulWidget {
  @override
  _FCRIScreenDetailsState createState() => _FCRIScreenDetailsState();
}

class _FCRIScreenDetailsState extends State<FCRIScreenDetails> {
  
   Widget topCarousel () {
    return Container(
       height: 200,
       child: Carousel(
          autoplay: true,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(milliseconds: 2000),
          dotSize: 1.0,
          dotBgColor: Colors.transparent,
          dotIncreasedColor: Colors.black,
          boxFit: BoxFit.fill,
          
          images: [
              AssetImage('assets/img/DashboardImg/FCRI.JPG'),
              AssetImage('assets/img/DashboardImg/FCRI.JPG'),
              AssetImage('assets/img/DashboardImg/FCRI.JPG')  
          ],      
       ),
    );
  }









  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('FCRI'),
          centerTitle: true,
        ),

        body: Container(
          child: Column(
            children: [
              topCarousel(),
               Divider( height: 10.0,),
                  Expanded(
                child: ListView(
                  children: [
                    makecardItem(),


                  ],
                )
              ),
            ],
          ),
        ),


      
    );
  }

  makecardItem(){
      return Container(
        margin: EdgeInsets.fromLTRB(0, 2.5, 0, 2.5),
            child: Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                  child:Center(child: Text('FCRI')),
                ),
                Container(
                   padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                   child: Text('Lorem ipsum dolor sit amet,consectetur adipiscing elit,sed do eiusmod tempor incididuntut labore et dolore magna aliqua.'),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                  child:Center(child: Text('FCRI')),
                ),
                Container(
                   padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                   child: Text('Lorem ipsum dolor sit amet,consectetur adipiscing elit,sed do eiusmod tempor incididuntut labore et dolore magna aliqua.'),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                  child:Center(child: Text('FCRI')),
                ),
                Container(
                   padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                   child: Text('Lorem ipsum dolor sit amet,consectetur adipiscing elit,sed do eiusmod tempor incididuntut labore et dolore magna aliqua.'),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                  child:Center(child: Text('FCRI')),
                ),
                Container(
                   padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                   child: Text('Lorem ipsum dolor sit amet,consectetur adipiscing elit,sed do eiusmod tempor incididuntut labore et dolore magna aliqua.'),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                  child:Center(child: Text('FCRI')),
                ),
                Container(
                   padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                   child: Text('Lorem ipsum dolor sit amet,consectetur adipiscing elit,sed do eiusmod tempor incididuntut labore et dolore magna aliqua.'),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                  child:Center(child: Text('FCRI')),
                ),
                Container(
                   padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                   child: Text('Lorem ipsum dolor sit amet,consectetur adipiscing elit,sed do eiusmod tempor incididuntut labore et dolore magna aliqua.'),
                ),

              ],
            ),
          ),
      );
    }





}