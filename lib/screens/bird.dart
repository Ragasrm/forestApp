import 'package:ForestSpiApp/screens/displaydetails.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

class ListingFile extends StatefulWidget {
  @override
  _ListingFileState createState() => _ListingFileState();
}

class _ListingFileState extends State<ListingFile> {


// constructor
  _ListingFileState() {
    this.fetchData();
    _filter.addListener(this.textChangeListener);
  }


   void textChangeListener() {
    final text = _filter.text.toLowerCase();
      if(!text.isEmpty) {
        List<dynamic> filter = [];
        this.data.forEach((dynamic datum){
          if(datum['c'].toString().toLowerCase().contains(text)){
            filter.add(datum);
          }
        });
        print(filter.length);
        if(filter.length > 0){
          setState(() {
            filteredData = filter;
          });
        } else {
          setState(() {
            filteredData = [];
          });
        }
      } else {
        setState(() {
          filteredData = this.data;
        });
      }
  }

  // variable
  final TextEditingController _filter = new TextEditingController();  
  Icon _searchIcon = new Icon(Icons.search);
  Widget _appBarTitle = new Text( 'Bird List' );
  List<dynamic> data = [];
  List<dynamic> filteredData = [];

//function to get data;
 Future fetchData() async {
      //final rawData = await DefaultAssetBundle.of(context).loadString("assets/JSON/birds.json");
      final rawData = await rootBundle.loadString("assets/JSON/b.json");
      final List<dynamic> jsonData =  jsonDecode(rawData);
      print(jsonData);
      setState(() {
        data = jsonData;
        filteredData = jsonData;
       
      });
  }

    void _searchPressed() {
    setState(() {
      if (this._searchIcon.icon == Icons.search) {
        this._searchIcon = new Icon(Icons.close);
        this._appBarTitle = new TextField(
          controller: _filter,
          autofocus: true,
          decoration: new InputDecoration(
            prefixIcon: new Icon(Icons.search),
            hintText: 'Search Here...'
          ),
        );
      } else {
        this._searchIcon = new Icon(Icons.search);
        this._appBarTitle = new Text('Bird List');
         _filter.clear();
      }
    });
  }


  

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: this._appBarTitle,
        centerTitle: true,
        actions: [
          IconButton(icon: this._searchIcon
          , onPressed: _searchPressed),
        ],
      ),


      body: ListView.builder(
        itemCount: this.filteredData.length,
        itemBuilder: (BuildContext context, i){
          return Card(
                child: ListTile(
                  leading: ClipRRect(
                      borderRadius: BorderRadius.circular(25.0),
                      child: CachedNetworkImage(
                        fit: BoxFit.cover,
                        width: 55,
                        height: 60,
                        placeholder: (context, url) => new CircularProgressIndicator(),
                         imageUrl:this.filteredData[i]['i']                        
                      ),
                    ),
              title: Text(this.filteredData[i]['c']),
              subtitle: Text(this.filteredData[i]['s'], style: TextStyle(fontStyle: FontStyle.italic, color: Colors.green),),
              onTap: (){

                  Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) => 
                    DisplayDetails(this.filteredData[i])));

              },
            ),
          );
        },


      )

    );
  }
}

