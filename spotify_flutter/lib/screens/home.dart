import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spotify_flutetr/models/start.dart';
import 'package:spotify_flutetr/widgets/navIcon.dart';
import 'package:spotify_flutetr/widgets/topbar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    start.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MediaQuery.removePadding(
      removeBottom: true,
      context: context,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SafeArea(
              child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Good After Noon',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: Icon(FontAwesomeIcons.bell),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: Icon(Icons.watch_later),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: Icon(Icons.settings),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'To Get You Started',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 250,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: start.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(right: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Image.network(
                                  start[index].image,
                                  width: size.width * 0.4,
                                  height: size.height * 0.2,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                start[index].name,
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.7),
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                start[index].author,
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.7),
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        );
                      }),
                ),
                Text(
                  'Top Picks',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 250,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: start2.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(right: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Image.network(
                                  start2[index].image,
                                  width: size.width * 0.4,
                                  height: size.height * 0.2,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                start2[index].name,
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.7),
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                start2[index].author,
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.7),
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        );
                      }),
                ),
                Text(
                  'Enjoy the Day',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 250,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: start.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(right: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Image.network(
                                  start[index].image,
                                  width: size.width * 0.4,
                                  height: size.height * 0.2,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                start[index].name,
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.7),
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                start[index].author,
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.7),
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        );
                      }),
                )
              ],
            ),
          )),
        ),
      ),
    );
  }
}
