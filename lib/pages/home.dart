import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  Home({super.key});

  static final List<Map<String, dynamic>> bannerPromoData = [
    {
      "promo1": {
        "image": "images/banner-carousel/promo1-banner.jpg",
        "link": "http://"
      },
      "promo2": {
        "image": "images/banner-carousel/promo1-banner.jpg",
        "link": "http://"
      },
      "promo3": {
        "image": "images/banner-carousel/promo1-banner.jpg",
        "link": "http://"
      }
    }
  ];

  final List<Map<String, dynamic>> menuList = [
    {
      "beverages": ["signatured", "iced coffee", "hot coffee", "chocolate"],
      "foods": ["signature", "bakery", "salad", "yogurt"]
    }
  ];

  static _getBannerPromo() {
    List<String> newBannerList = [];
    for (var promoBanner in bannerPromoData) {
      for (var promoContent in promoBanner.values) {
        String newString = "";
        newString = promoContent['image'];
        newBannerList.add(newString);
      }
    }

    return newBannerList;
  }

  @override
  Widget build(BuildContext context) {
    List<String> bannerUrls = _getBannerPromo();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: false,
          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Selamat pagi",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontStyle: FontStyle.italic),
              ),
              Text(
                "John Doe",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontStyle: FontStyle.italic),
              )
            ],
          ),
          actions: [
            Badge(
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.email_outlined)),
            )
          ],
        ),
        body: ListView(padding: const EdgeInsets.all(10.0), children: [
          CarouselSlider(
              items: bannerUrls.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        child: Container(
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15.5)),
                        child: Stack(
                          children: [
                            Image.asset(i),
                          ],
                        ),
                      ),
                    ));
                  },
                );
              }).toList(),
              options: CarouselOptions(
                  autoPlay: true,
                  enableInfiniteScroll: true,
                  viewportFraction: 1,
                  autoPlayInterval: const Duration(seconds: 5))),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Beverages",
                style: TextStyle(fontSize: 15),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'View all',
                  style: TextStyle(
                      fontFamily: 'varela',
                      fontSize: 15.0,
                      color: Color.fromARGB(255, 199, 138, 40)),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
