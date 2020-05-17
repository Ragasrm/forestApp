import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

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
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onPreeBackbutton,
          child: Scaffold(
        appBar: AppBar(
        //  leading: Icon(Icons.account_balance),
          elevation: 0.9,        
          title: Text('Dashboard',style: TextStyle(color: Colors.white),),
          centerTitle: true,
        ),

        body: Container(  

            decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/img/BackGround.png"),
                 fit: BoxFit.cover)),


          padding: EdgeInsets.all(15.0),
          child: GridView.count(crossAxisCount: 2,
          padding: EdgeInsets.all(3.0),
          children: [
              makeDashboardItem("Birds","assets/img/tiger.jpg"),
              makeDashboardItem("Birds","assets/img/tiger.jpg"),
              makeDashboardItem("Birds","assets/img/tiger.jpg"),
               

              // makeDashboardItem("Today's Patient", Icons.alarm),
              // makeDashboardItem("User List", Icons.alarm),
            

          ],),
        ),
        
      ),
    );
  }






  // Card makeDashboardItem(String title, IconData icon) {
  //   return Card(
  //       elevation: 1.0,
  //       margin: new EdgeInsets.all(8.0),
  //       child: Container(
  //         decoration: BoxDecoration(color: Colors.teal),
  //         child: InkWell(
  //           onTap: (){

  //             // function 
  //           //   if(title == 'Birds'){
  //           //   Navigator.push(context, MaterialPageRoute(builder: (context)=>
  //           //                     ListingFile()));             
  //           // }

  //             print('Ragav');
  //           },
  //           child: Column(
  //             children: [
  //                SizedBox(height: 50.0),
  //                Center(
  //                  child: Icon(
  //                    icon,size: 50.0,color: Colors.black,
  //                  ),

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



   makeDashboardItem(String title, String icon) {
    return Card(
        elevation: 1.0,
       // margin: new EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(color: Colors.teal),
          child: InkWell(
            onTap: (){

              // function 
            //   if(title == 'Birds'){
            //   Navigator.push(context, MaterialPageRoute(builder: (context)=>
            //                     ListingFile()));             
            // }

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
                                  borderRadius: BorderRadius.circular(0),
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
                ),),

                   decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              offset: Offset(2, 2),
                              spreadRadius: 2,
                              blurRadius: 2)
                        ],
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(icon)),
                      ),
            ),
          ),
    
        ));
  }







}