import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spotify_flutetr/screens/home.dart';
import 'package:spotify_flutetr/screens/library.dart';
import 'package:spotify_flutetr/screens/search.dart';
import 'package:spotify_flutetr/screens/spotify.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int pageIndex = 0;

  List<Widget> screen = const[Home(), Search(), Library(), Premium()];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
       const SystemUiOverlayStyle(statusBarColor: Colors.black));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      // ThemeData(
      //     primaryColor: Color(0xff009fd6), accentColor: Color(0xff009fd6)),
      home: Scaffold(
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
          child: BottomNavigationBar(
              currentIndex: pageIndex,
              backgroundColor: Colors.black,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white.withOpacity(0.5),
              unselectedLabelStyle:
                 const TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
              showUnselectedLabels: true,
              onTap: (index) {
                setState(() {
                  pageIndex = index;
                });
              },
              items:const [
                BottomNavigationBarItem(
                    label: 'Home',
                    icon: Icon(
                      Icons.home_outlined,
                    )),
                BottomNavigationBarItem(
                  label: 'Search',
                  icon: Icon(
                    FontAwesomeIcons.search,
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.book,
                  ),
                  label: 'Your Library',
                ),
                BottomNavigationBarItem(
                    icon: Icon(
                      FontAwesomeIcons.spotify,
                    ),
                    label: 'Premium'),
              ]),
        ),
        body: screen[pageIndex],
      ),
    );
  }
}
