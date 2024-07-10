import 'package:flutter/material.dart';
// import 'package:flutter_application_coffee_shop/pages/home.dart';
// import 'pages/product_list.dart';
import 'pages/product_detail.dart';
import 'pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/productDetail': (context) => const ProductDetail(),
      },
    );
  }
}
