import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class HomeBarView extends StatefulWidget {

  @override
  _HomeBarViewState createState() => _HomeBarViewState();
}

class _HomeBarViewState extends State<HomeBarView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
                child: ImageSlideshow(
              width: double.infinity,
              height: 175,
              initialPage: 0,
              autoPlayInterval: 3000,
              indicatorColor: Colors.grey,
              indicatorBackgroundColor: Colors.white,
              children: [
                Image.asset(
                  'asset/1.jpg',
                  fit: BoxFit.fitWidth,
                ),
                Image.asset(
                  'asset/2.jpg',
                  fit: BoxFit.fitWidth,
                ),
                Image.asset(
                  'asset/3.jpg',
                  fit: BoxFit.fitWidth,
                ),
                Image.asset(
                  'asset/4.jpg',
                  fit: BoxFit.fitWidth,
                ),
                Image.asset(
                  'asset/5.jpg',
                  fit: BoxFit.fitWidth,
                ),
              ],
            )),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Column(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Top Movies',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 18),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colors.white,
                                size: 15,
                              )
                            ],
                          ),
                          Container(
                            height: 90,
                            margin: EdgeInsets.only(top: 5),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: imgList.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(
                                      right: 8.0,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        imgList[index],
                                        height: 110,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 12),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Watch in Your languages',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 18),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colors.white,
                                size: 15,
                              )
                            ],
                          ),
                          Container(
                            height: 160,
                            margin: EdgeInsets.only(top: 5),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: languageList.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(
                                      right: 8.0,
                                    ),
                                    child: Stack(children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          languageList[index].image,
                                          height: 160,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              bottom: 5, left: 5),
                                          child: Text(
                                            languageList[index].lang,
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      )
                                    ]),
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 12),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Recommended Movies',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 18),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colors.white,
                                size: 15,
                              )
                            ],
                          ),
                          Container(
                            height: 90,
                            margin: EdgeInsets.only(top: 5),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: imgList.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(
                                      right: 8.0,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        imgList[index],
                                        height: 110,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 12),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Amazon Orginal Movies',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 18),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colors.white,
                                size: 15,
                              )
                            ],
                          ),
                          Container(
                            height: 90,
                            margin: EdgeInsets.only(top: 5),
                            decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: orginalMovies.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(
                                      right: 8.0,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        orginalMovies[index],
                                        height: 110,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 12),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Thriller Tv',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 18),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colors.white,
                                size: 15,
                              )
                            ],
                          ),
                          Container(
                            height: 90,
                            margin: EdgeInsets.only(top: 5),
                            decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: thrillerMovies.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(
                                      right: 8.0,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        thrillerMovies[index],
                                        height: 110,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

final List<String> imgList = [
  'asset/1.jpg',
  'asset/2.jpg',
  'asset/3.jpg',
  'asset/4.jpg',
  'asset/5.jpg',
];

class watchLanguage {
  String lang, image;

  watchLanguage({required this.lang, required this.image});
}

List<watchLanguage> languageList = [
  watchLanguage(lang: 'English', image: 'asset/en.jpg'),
  watchLanguage(lang: 'Hindi', image: 'asset/hn.jpg'),
  watchLanguage(lang: 'Telugu', image: 'asset/tg.jpg'),
  watchLanguage(lang: 'Tamil', image: 'asset/tm.jpg'),
  watchLanguage(lang: 'Malayalam', image: 'asset/ml.jpg'),
];

List<String>orginalMovies=[
  'asset/og1.jpg',
  'asset/og2.jpg',
  'asset/og3.jpg',
  'asset/og4.jpg',
  'asset/og5.jpg',
];

List<String>thrillerMovies=[
  'asset/th1.jpg',
  'asset/th2.jpg',
  'asset/th3.jpg',
  'asset/th4.jpg',
  'asset/th5.jpg',
];