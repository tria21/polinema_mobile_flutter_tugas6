import 'package:flutter/material.dart';
import 'package:tugas6/models/item.dart';
import 'package:tugas6/pages/item_page.dart';

class HomePage extends StatelessWidget {

  final List<Item> items = [
    Item(name: 'Mawar', price: 50000, stock: 5, desc: 'Mawar adalah suatu jenis tanaman semak dari genus Rosa sekaligus nama bunga yang dihasilkan tanaman ini.'),
    Item(name: 'Anggrek', price: 150000, stock: 3, desc: 'Suku anggrek-anggrekan (bahasa Latin: Orchidaceae) merupakan satu suku tumbuhan berbunga dengan anggota jenis terbanyak'),
    Item(name: 'Melati', price: 50000, stock: 10, desc: 'Melati merupakan tanaman bunga hias berupa perdu berbatang tegak yang hidup menahun')
  ];

  @override
  Widget build(BuildContext context){
 return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
           backgroundColor: Colors.brown.shade700,
          title: Text("Home Page"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: ListView.builder(
            padding: EdgeInsets.all(8),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage(tempItem: item))); //digunakan untuk mengirim data ke halaman berikutnya
                },
                child: Card(
                  child: Container(
                    margin: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Expanded(child: Text(item.name)),
                        Expanded(
                            child: Text(
                          item.price.toString(),
                          textAlign: TextAlign.end,
                        ),
                      ),
                      Expanded(
                            child: Text(
                          item.stock.toString(),
                          textAlign: TextAlign.end,
                        ),
                      ),
                      Expanded(
                            child: Text(
                          "Deskripsi",
                          textAlign: TextAlign.end,
                        ),
                      )
                    ],
                  )
                ),
              ),
              );
            },
          ),
        ),
      ),
    );
  }
}