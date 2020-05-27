import 'package:photo_view/photo_view.dart';
import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
 ImageScreen(this.photo);
  final photo;

  Widget photoView() {
    return Container(
      child: PhotoView(
        imageProvider: AssetImage(photo),
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: photoView()
    );   
  }
}