import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class DisplayDetails extends StatelessWidget {
 DisplayDetails(this.data);
  final data;
  @override
  Widget build(BuildContext context) {
    print(data['i']);

// carousel widget made for image display...
   Widget image_slider_carousel= Container(
       height: 200,
       child: Carousel(
          autoplay: true,
           //animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 1.0,
        dotBgColor: Colors.transparent,
        dotIncreasedColor: Colors.black,
        boxFit: BoxFit.fill,
        
        images: [
            // Image(image: NetworkImage(data['i']))    this is fornetwork image
            Image.asset(data['i'])
        ],      
       ),
    );

//Actual Application starts here..!
    return Scaffold(
      // app bar
      appBar: AppBar(
        title: Text(data['c']),
        centerTitle:true
      ),




      
      // image carousel
      body: Column(
        children: [
          Container(
           height: 200.0,
            child: image_slider_carousel,
          ),
           Divider( height: 20.0,),
          //  Text('Information', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),), Divider( height: 10.0,),
           Container(
             height: 400.0,
             child: SingleChildScrollView(
               child: Card(
                 child: Column(
                   children: [
                     makecardItem("Common Name",data['c']),
                     makecardItem("Scientific Name",data['s']),
                     makecardItem("Family Name",data['f']),
                     makecardItem("Size", data['sz']),
                     makecardItem("Description",data['d']),

                       //Common name
                    //  Row(mainAxisAlignment: MainAxisAlignment.start,
                    //    children: [
                    //      Padding( padding: const EdgeInsets.only(left: 8.0, bottom: 8.0, top: 8.0),
                    //      child: Text('Common Name', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),) ],),
                    //     Wrap( runAlignment: WrapAlignment.start,
                    //      children: [
                    //        Padding( padding: const EdgeInsets.only(left: 8.0),
                    //        child: Wrap( runAlignment: WrapAlignment.start,
                    //        children: [
                    //            Align( alignment: Alignment.topLeft,
                    //            child: Text(data['c'], style: TextStyle( fontWeight: FontWeight.normal, fontSize: 14), ),), ],),) ],),

                      //Scientific name
                    //  Row(mainAxisAlignment: MainAxisAlignment.start,
                    //    children: [
                    //      Padding( padding: const EdgeInsets.only(left: 8.0, bottom: 8.0, top: 8.0),
                    //      child: Text('Scientific Name', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),) ],),
                    //     Wrap( runAlignment: WrapAlignment.start,
                    //      children: [
                    //        Padding( padding: const EdgeInsets.only(left: 8.0),
                    //        child: Wrap( runAlignment: WrapAlignment.start,
                    //        children: [
                    //            Align( alignment: Alignment.topLeft,
                    //            child: Text(data['s'], style: TextStyle( fontWeight: FontWeight.normal, fontSize: 14), ),), ],),) ],),

                      //Family name
                    //   Row(mainAxisAlignment: MainAxisAlignment.start,
                    //    children: [
                    //      Padding( padding: const EdgeInsets.only(left: 8.0, bottom: 8.0, top: 8.0),
                    //      child: Text('Family Name', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),) ],),
                    //     Wrap( runAlignment: WrapAlignment.start,
                    //      children: [
                    //        Padding( padding: const EdgeInsets.only(left: 8.0),
                    //        child: Wrap( runAlignment: WrapAlignment.start,
                    //        children: [
                    //            Align( alignment: Alignment.topLeft,
                    //            child: Text(data['f'], style: TextStyle( fontWeight: FontWeight.normal, fontSize: 14), ),), ],),) ],),

                         //SIZE 
                    //   Row(mainAxisAlignment: MainAxisAlignment.start,
                    //    children: [
                    //      Padding( padding: const EdgeInsets.only(left: 8.0, bottom: 8.0, top: 8.0),
                    //      child: Text('Size', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),) ],),
                    //     Wrap( runAlignment: WrapAlignment.start,
                    //      children: [
                    //        Padding( padding: const EdgeInsets.only(left: 8.0),
                    //        child: Wrap( runAlignment: WrapAlignment.start,
                    //        children: [
                    //            Align( alignment: Alignment.topLeft,
                    //            child: Text(data['sz'], style: TextStyle( fontWeight: FontWeight.normal, fontSize: 14), ),), ],),) ],),                         
                        
                      //Description 
                    //   Row(mainAxisAlignment: MainAxisAlignment.start,
                    //    children: [
                    //      Padding( padding: const EdgeInsets.only(left: 8.0, bottom: 8.0, top: 8.0),
                    //      child: Text('Description', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),) ],),
                    //     Wrap( runAlignment: WrapAlignment.start,
                    //      children: [
                    //        Padding( padding: const EdgeInsets.only(left: 8.0),
                    //        child: Wrap( runAlignment: WrapAlignment.start,
                    //        children: [
                    //            Align( alignment: Alignment.topLeft,
                    //            child: Text(data['d'], style: TextStyle( fontWeight: FontWeight.normal, fontSize: 14), ),), ],),) ],),                         




                     ], ), ),
                               
             ),
           )
        ],
      ),




      // body: ListView(
      //   children: [
      //     image_slider_carousel,
      //     Divider( height: 50.0,),
      //     Center(child: Text('detail of '+ data['c'])),
      //     SizedBox(height: 10.0,),
      //     Center(
      //       child: Container(
      //         padding: EdgeInsets.all(20.0),
              
      //         child: Table(
      //           border: TableBorder.all(color: Colors.green),
      //            children: [
      //                  TableRow(
      //                    children: [
      //                      Column(children: [ Text('Common Name'),],),
      //                      Column(children: [ Text(data['c']),],),
      //                    ]
      //                  ),
      //                    TableRow(
      //                    children: [
      //                      Column(children: [ Text('Scientific Name'),],),
      //                      Column(children: [ Text(data['s']),],),
      //                    ]
      //                  ),
      //                   TableRow(
      //                    children: [
      //                      Column(children: [ Text('Family'),],),
      //                      Column(children: [ Text(data['f']),],),
      //                    ]
      //                  ),
      //                   TableRow(
      //                    children: [
      //                      Column(children: [ Text('Size'),],),
      //                      Column(children: [ Text(data['sz']),],),
      //                    ]
      //                  ),
      //                     TableRow(
      //                    children: [
      //                      Column(children: [ Text('Description'),],),
      //                      Column(children: [ Text(data['d']),],),
      //                    ]
      //                  ),
                      
                      
      //                ],
      //         ),
      //       ),
      //     )
      //   ],     
      // ),
      
    );   
  }



    makecardItem(String title, String subtitle){

           return Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                title: Text(title),
                subtitle: Text(subtitle),
              ),
            );
    
  }




}