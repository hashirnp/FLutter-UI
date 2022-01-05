import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MaterialApp(


    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    double height,width;
    height=MediaQuery.of(context).size.height;
    width=MediaQuery.of(context).size.width;
    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height),
        designSize: Size(360, 690),
        orientation: Orientation.portrait);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _AppBar(),
          _primeTag(),
          Divider(
            thickness: 2,
          ),
          Padding(
            padding: EdgeInsets.only(left: 8, top: 2),
            child: Text(
              'RESULTS',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
          MediaQuery.removePadding(
            removeTop: true,
            context: context,
            child: Expanded(
                child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 175,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(2)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          flex: 3,
                          child: DecoratedBox(
                              decoration: BoxDecoration(color: Colors.white),
                              child: Center(
                                child: Image.network(
                                  list[index].image,
                                  fit: BoxFit.cover,
                                ),
                              )),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  list[index].titile,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.star, color: Color(0xffFF9900)),
                                    Icon(Icons.star, color: Color(0xffFF9900)),
                                    Icon(Icons.star, color: Color(0xffFF9900)),
                                    Icon(Icons.star, color: Color(0xffFF9900)),
                                    Icon(Icons.star, color: Color(0xffFF9900)),
                                    Text('67,789',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.normal))
                                  ],
                                ),
                                Container(
                                  width: ScreenUtil().setWidth(195),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        '₹5000',
                                        style: TextStyle(
                                            color: Color(0xffab1937),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 3.5
                                        ),
                                        child: Text(
                                          '₹7500',
                                          style: TextStyle(
                                              decoration:
                                              TextDecoration.lineThrough,
                                              color: Colors.grey[700],
                                              fontWeight: FontWeight.normal,
                                              fontSize: 13),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 1),
                                        child: Container(
                                          child: Text(
                                            'Save ₹2,500 (33%)',
                                            overflow: TextOverflow.fade,
                                            style: TextStyle(
                                                color: Colors.grey[700],
                                                fontSize: 13),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          flex: 4,
                        )
                      ],
                    ),
                  ),
                );
              },
              itemCount: list.length,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
            )),
          )
        ],
      ),
    );
  }
}

class _AppBar extends StatelessWidget {
  const _AppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xff74FFF9),
                Color(0xfff9f4ae)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight)),
      child: Column(
        children: [
          SafeArea(
            child: SizedBox(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 8,
                      ),
                      Icon(
                        Icons.menu_outlined,
                        size: 30,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Image.asset(
                        'assets/logo.png',
                        width: 140,
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.shopping_cart_sharp),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 8, right: 8),
            child: Expanded(child: SearchBox()),
          ),
          SizedBox(
            height: 8,
          ),
          Expanded(
              child: Container(
            height: 60,
            decoration: BoxDecoration(color: Colors.white.withOpacity(0.5)),
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.place_outlined),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Delivery to Hashir - Kundoor - 676320',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}

class SearchBox extends StatelessWidget {
  const SearchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(8)),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.15),
                blurRadius: 4,
                spreadRadius: 2)
          ]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(
              Icons.search,
              color: Colors.black,
              size: 30,
            ),
            Text(
              'alexa',
              style: TextStyle(color: Colors.black, fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}

class _primeTag extends StatelessWidget {
  const _primeTag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8, top: 8, bottom: 8),
                child: Image.asset(
                  'assets/prime.png',
                  height: 30,
                  width: 60,
                ),
              ),
              Switch(
                value: false,
                onChanged: null,
                focusColor: Colors.grey,
              )
            ],
          ),
          Row(
            children: [
              VerticalDivider(
                thickness: 1.5,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Filters',
                  style: TextStyle(
                      color: Color(0xff249de1),
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: Icon(
                  Icons.arrow_drop_down,
                  color: Color(0xff249de1),
                  size: 25,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class _Item extends StatelessWidget {
  late String image, titile;

  _Item({required this.image, required this.titile});

  @override
  Widget build(BuildContext context) {

    double height, width;
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: 175,
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.1),
            borderRadius: BorderRadius.circular(2)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 3,
              child: DecoratedBox(
                  decoration: BoxDecoration(color: Colors.white),
                  child: Center(
                    child: Image.network(
                      image,
                      fit: BoxFit.cover,
                    ),
                  )),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      titile,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Color(0xffFF9900)),
                        Icon(Icons.star, color: Color(0xffFF9900)),
                        Icon(Icons.star, color: Color(0xffFF9900)),
                        Icon(Icons.star, color: Color(0xffFF9900)),
                        Icon(Icons.star, color: Color(0xffFF9900)),
                        Text('67,789',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.normal))
                      ],
                    ),
                    Container(

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            '₹5000',
                            style: TextStyle(
                                color: Color(0xffab1937),
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.5),
                            child: Text(
                              '₹7500',
                              style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  color: Colors.grey[700],
                                  fontWeight: FontWeight.normal,
                                  fontSize: 13),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 1),
                            child: Container(
                              child: Text(
                                'Save ₹2,500 (33%)',
                                overflow: TextOverflow.fade,
                                style: TextStyle(
                                    color: Colors.grey[700], fontSize: 12),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              flex: 4,
            )
          ],
        ),
      ),
    );
  }
}

class itemModel {
  late String titile, image;

  itemModel({required this.titile, required this.image});
}

List<itemModel> list = [
  itemModel(
      image:
          'https://m.media-amazon.com/images/I/61EXU8BuGZL._AC_UY327_FMwebp_QL65_.jpg',
      titile:
          'Echo Dot (3rd Gen) - #1 smart speaker brand in India with Alexa (Black)'),
  itemModel(
      image:
          'https://m.media-amazon.com/images/I/61KIy6gX-CL._AC_UY327_FMwebp_QL65_.jpg',
      titile:
          'Echo Dot (4th Gen, 2020 release)| #1 smart speaker brand in India with Alexa (Black)'),
  itemModel(
      image:
          'https://m.media-amazon.com/images/I/61fAoBkYQ1L._AC_UY327_FMwebp_QL65_.jpg',
      titile:
          'Echo Dot (3rd Gen) - #1 smart speaker brand in India with Alexa (White)'),
  itemModel(
      image:
          'https://m.media-amazon.com/images/I/61u0y9ADElL._AC_UY327_FMwebp_QL65_.jpg',
      titile:
          'Echo Dot (4th Gen, 2020 release)| #1 smart speaker brand in India with Alexa (Blue)'),
  itemModel(
      image:
          'https://m.media-amazon.com/images/I/61RyEv5mnNL._AC_UY327_FMwebp_QL65_.jpg',
      titile:
          'Echo Dot (3rd Gen), Certified Refurbished, Grey – Improved smart speaker with Alexa – Like new, backed with 1-year warranty'),
  itemModel(
      image:
          'https://m.media-amazon.com/images/I/51qkBdfmymS._AC_UY327_FMwebp_QL65_.jpg',
      titile:
          'Echo Dot (3rd Gen, Black) + Wipro 9W LED Smart Color Bulb combo - Works with Alexa - Smart Home starter kit'),
];
