import 'package:flutter/material.dart';
import 'package:flutter_first/screens/individual.dart';


class Homepage extends StatelessWidget {
  @override
  List _name = ["Facebook", "Twitter", "Instagram"];
  List _status = ['Man uploaded a photo', 'Score', 'Formula One'];
  List _profileIcon = [Icons.hail, Icons.high_quality, Icons.home];
  List _images = ['https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
  'https://media.squawka.com/images/en/2020/12/20184821/1181394_1181394_MANCHESTER-UNITED-6-2-LEEDS-UNITED-FEATURED-840x470.jpg',
  'https://www.lrs-formula.com/c/12-category_default/f1-driving-experience.jpg'
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white30,
        title: Text("Flutter one GCA"),
      ),
      body: ListView(
        children: [
          //Cards();
          GestureDetector(
            onTap: (){
              //print('works');
              Navigator.push(context, MaterialPageRoute(builder: (context) => Individualpage(_name[0], _images[0])));
            },
            child: Container(
              margin: EdgeInsets.all(10.0),
              color: Colors.black12,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    child:_topbar(_name[0], _profileIcon[0])
                    ),
                  _content(_status[0], _images[0]),
                  _bottom() 
                ]
              ),      
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Individualpage(_name[1], _images[1])));
            },
            child: Container(
              margin: EdgeInsets.all(10.0),
              color: Colors.black12,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    child:_topbar(_name[1], _profileIcon[1])
                    ),
                  _content(_status[1], _images[1]),
                  _bottom() 
                ]
              ),      
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Individualpage(_name[2], _images[2])));
            },
            child: Container(
              margin: EdgeInsets.all(10.0),
              color: Colors.black12,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    child:_topbar(_name[2], _profileIcon[2])
                    ),
                  _content(_status[2], _images[2]),
                  _bottom() 
                ]
              ),      
            ),
          )
        ],
      ),         
    );
  }

  Widget _topbar(String accountName, IconData icn) {
    return Row(
      children:[
        Icon(icn,
        color: Colors.blue,
        size: 50
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Text(accountName),
        ),
        /*Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Icon(Icons.menu),
        )*/
      ]
    );
  }

  Widget _content(String sts, String img) {
    return Column(
      children:[
        Text(sts),
        Image(image: NetworkImage(img))
      ]
    );
  }

  Widget _bottom() {
    return Column(
      children:[
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, bottom: 5.0),
              child: Icon(
                Icons.favorite,
                color: Colors.red.shade700,
              ),
            ),
            Text("1.2K")
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0, bottom: 4.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children:[
              Container(
                margin: const EdgeInsets.only(left: 45.0, right: 45.0),
                child: Icon(Icons.thumb_up)
                /*IconButton(
                  icon: Icon(Icons.thumb_up),
                  onPressed: (){},)*/
              ),
              Container(
                margin: const EdgeInsets.only(left: 40.0, right: 45.0),
                child: Icon(Icons.comment)),
              Container(
                margin: const EdgeInsets.only(left: 45.0, right: 45.0),
                child: Icon(Icons.ios_share))
            ]
          ),
        )
      ]
    );
  }
}

