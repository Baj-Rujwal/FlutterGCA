import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text("hello")
      ),
      body: Column(
        children: [
        Container(
          margin: const EdgeInsets.all(10.0),
          child:_topbar()
          ),
        _content(),
        _bottom() 
      ]
      )
    );
  }

  Widget _topbar() {
    return Row(
      children:[
        Icon(Icons.fireplace,
        color: Colors.blue,
        size: 50
        ),
        Text('hello world sssssssssssssssssssssss'),
        Icon(Icons.settings_applications)
      ]
    );
  }

  Widget _content() {
    return Column(
      children:[
        Text('hello world'),
        Icon(Icons.settings_applications)
      ]
    );
  }

  Widget _bottom() {
    return Column(
      children:[
        Row(
          children: [
            Icon(Icons.favorite),
            Text("1.2K")
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          children:[
            Container(
              margin: const EdgeInsets.only(left: 45.0, right: 45.0),
              child: Icon(Icons.linked_camera)
            ),
            Container(
              margin: const EdgeInsets.only(left: 50.0, right: 45.0),
              child: Icon(Icons.comment)),
            Container(
              margin: const EdgeInsets.only(left: 45.0, right: 45.0),
              child: Icon(Icons.swap_horizontal_circle))
          ]
        )
      ]
    );
  }
}