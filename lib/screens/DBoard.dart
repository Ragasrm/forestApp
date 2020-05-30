import 'package:ForestSpiApp/screens/AboutFCRI/FCRI.dart';
import 'package:ForestSpiApp/screens/bird/bird.dart';
import 'package:ForestSpiApp/screens/Mammals/mammals.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  
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
          ],      
       ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onPreeBackbutton,
      child: Scaffold(
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
                child: GridView.count(
                  crossAxisCount: 2,
                  padding: EdgeInsets.all(3.0),
                  children: [
                      makeDashboardItem("MAMMALS",'assets/img/DashboardImg/tiger.jpg'),                   
                      makeDashboardItem("BIRDS", 'assets/img/DashboardImg/birds.jpg'),
                      makeDashboardItem("HERPETOFAUNA",'assets/img/DashboardImg/snake.jpg'),
                      makeDashboardItem("LANDSCAPE ", 'assets/img/DashboardImg/land.jpg'),
                      makeDashboardItem("ABOUT FCRI", 'assets/img/DashboardImg/FCRI.JPG'),
                      makeDashboardItem("ABOUT US",'assets/img/DashboardImg/ab.png'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }






  Future<bool> onPreeBackbutton(){
    return showDialog(context: context,
    builder: (context)=> AlertDialog(
      title: Text('Are you want to exit..!'),
      actions: [
        FlatButton(
          child: Text('No'),
          onPressed: () =>
          Navigator.pop(context,false),
        ),
        
        FlatButton(
          child: Text('Yes'),
          onPressed: () =>
          Navigator.pop(context,true),
        )
      ],
    ));
  }



   makeDashboardItem(String title, String icon) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(80),
      ),
      elevation: 8.0,
      margin: new EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(color: Colors.teal),
        child: InkWell(
          onTap: (){

            if(title == 'BIRDS'){
              Navigator.push(context,
                MaterialPageRoute(
                  builder: (context) => ListingFile()
                )
              );             
            } else if(title == 'MAMMALS'){
              Navigator.push(context,
                MaterialPageRoute(
                  builder: (context) => MammalsList()
                )
              );
            } else if(title == 'ABOUT FCRI'){
              Navigator.push(context,
                MaterialPageRoute(
                  builder: (context) => FCRIScreenDetails()
                )
              );
            }
            print('Ragav');
          },
          child: Container(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Stack(
                children: [
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.black54,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        title,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(2, 2),
                  spreadRadius: 2,
                  blurRadius: 2
                )
              ],
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(icon)
              ),
            ),
          ),
        ),
      )
    );
  }




  //   makeDashboardItem(String title, String icon) {
  //   return Card(
  //       elevation: 6.0,
  //       margin: new EdgeInsets.all(8.0),
  //       child: Container(
  //         decoration: BoxDecoration(color: Colors.teal),
  //         child: InkWell(
  //           onTap: (){
  //             // function 
  //             if(title == 'Birds'){
  //             Navigator.push(context, MaterialPageRoute(builder: (context)=>
  //                               ListingFile()));             
  //           }
  //           },
  //           child: Column(
  //             children: [
  //                SizedBox(height: 10.0),
  //                Center(
  //                  child: Container(
  //                    child: Image.asset(icon,
  //                    height: 70,
  //                     width: 100,
  //                    // color: Colors.white,
    
  //                    ),
  //                  )
                                
  //                 //  child: Icon(
  //                 //    icon,size: 50.0,color: Colors.black,
  //                 //  ),

  //                ),
  //                 SizedBox(height: 20.0),
  //                 Center(
  //                   child: Text(title, style: TextStyle(fontSize: 18.0, color: Colors.black),),
  //                 )
  //             ],
  //           ),
  //         ),
    
  //       ));
  // }





}