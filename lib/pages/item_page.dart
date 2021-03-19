import 'package:flutter/material.dart';
import 'package:tugas6/models/item.dart';
import 'home_page.dart';

class ItemPage extends StatelessWidget {
  final Item tempItem;

  ItemPage({Key key, this.tempItem}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.brown.shade600,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
          appBar: AppBar(
            leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
          ),
            backgroundColor: Colors.brown.shade600,
            title: Text("Detail Bunga"),
          ),
          body: Container(
            alignment: Alignment.center,
            color: Colors.black87,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Nama : " + tempItem.name,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Price : " + tempItem.price.toString(),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Stock : " + tempItem.stock.toString(),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Desc : " + tempItem.desc,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ]),
          )),
    );
  }
  // This widget is the root of your application.

}