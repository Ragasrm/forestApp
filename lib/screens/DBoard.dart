import 'package:ForestSpiApp/screens/bird.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  
  Widget image_slider_carousel= Container(
       height: 200,
       child: Carousel(
          autoplay: true,
           //animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 2000),
        dotSize: 1.0,
        dotBgColor: Colors.transparent,
        dotIncreasedColor: Colors.black,
        boxFit: BoxFit.fill,
        
        images: [
            AssetImage('assets/img/bird.png'),
            AssetImage('assets/img/BackGround.png'),
            AssetImage('assets/img/logo1.png')         
        ],      
       ),
    );


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onPreeBackbutton,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
          centerTitle: true,
        ),

        body: Container(
          child: Column(
            children: [
              Container(
                height: 200.0,
                child:  image_slider_carousel,
              ),
              Divider( height: 20.0,),
              Container(
                 height: 400.0,

                decoration: BoxDecoration(
                image: DecorationImage(
                image: AssetImage("assets/img/BackGround.png"),
                 fit: BoxFit.cover)),

                 child: GridView.count(crossAxisCount: 2,
                 padding: EdgeInsets.all(3.0),
                 children: [
              
                    makeDashboardItem("Mammals",'assets/img/mammals.png'),                   
                    makeDashboardItem("Birds", 'assets/img/birdIcon.png'),
                    makeDashboardItem("Herpetofauna",'assets/img/Herpetofauna.png'),
                    makeDashboardItem("Landscapes ", 'assets/img/Landscapes.png'),
                    makeDashboardItem("About FCRI", 'assets/img/FCRI.png'),
                    makeDashboardItem("About us",'assets/img/aboutUS.png'),
                 ],
                 ),




              )

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




    Card makeDashboardItem(String title, String icon) {
    return Card(
        elevation: 6.0,
        margin: new EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(color: Colors.teal),
          child: InkWell(
            onTap: (){
              // function 
              if(title == 'Birds'){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>
                                ListingFile()));             
            }
            },
            child: Column(
              children: [
                 SizedBox(height: 10.0),
                 Center(
                   child: Container(
                     child: Image.asset(icon,
                     height: 70,
                      width: 100,
                     // color: Colors.white,
    
                     ),
                   )
                                
                  //  child: Icon(
                  //    icon,size: 50.0,color: Colors.black,
                  //  ),

                 ),
                  SizedBox(height: 20.0),
                  Center(
                    child: Text(title, style: TextStyle(fontSize: 18.0, color: Colors.black),),
                  )
              ],
            ),
          ),
    
        ));
  }


  //     makeDashboardItem(String title, String icon) {
  //   return Card(
  //     child: Container(
  //       decoration: BoxDecoration(
  //         image: DecorationImage(
  //           image: AssetImage(icon),
  //           fit: BoxFit.fill,
  //           alignment: Alignment.topCenter
  //         ),
  //       ),
  //       child:
  //       Container(
         
  //       )
        
        
        
  //     ),
  //   );

   
  // }




}