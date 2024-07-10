import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  ProductList({super.key});

  final List<Map<String, dynamic>> myList = [
    {
      "name": "Latte",
      "price": 1000,
      "image": "images/product-chevanon.jpg",
      "size": ["s", "m", "l"]
    },
    {
      "name": "Moccachino",
      "price": 2000,
      "image": "images/product-chevanon.jpg",
      "size": ["s", "m", "l"]
    },
    {
      "name": "Americano",
      "price": 500,
      "image": "images/product-chevanon.jpg",
      "size": ["s", "m"]
    }
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text("KopiLooooo"),
            backgroundColor: Colors.white,
          ),
          body: ListView(
            children: myList.map((data) {
              return Card(
                semanticContainer: true,
                margin: EdgeInsets.all(15),
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image(
                                image: AssetImage("${data['image']}"),
                                width: 320,
                                height: 220,
                              ),
                              Text("${data['name']}"),
                              Text("Rp. ${data['price']}"),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.amber,
                                    fixedSize: Size(320, 36),
                                    shape: const RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(2)),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, '/productDetail');
                                  },
                                  child: Text("Beli"))
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ));
  }
}
