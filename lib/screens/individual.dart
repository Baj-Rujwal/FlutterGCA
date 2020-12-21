import 'package:flutter/material.dart';

class Individualpage extends StatelessWidget {
  String name;
  String img;
  Individualpage(this.name, this.img);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name),),
      body: Image(image: NetworkImage(img),)      
    );
  }
}
