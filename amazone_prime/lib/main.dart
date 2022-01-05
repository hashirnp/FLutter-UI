import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'navScreen/download_view.dart';
import 'navScreen/find_view.dart';
import 'navScreen/home.dart';
import 'navScreen/profile_view.dart';

void main() {
  runApp(MaterialApp(
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

  List<Widget> screen = [HomeView(), FindView(), DownloadView(), ProfileView()];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.black));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Color(0xff0e171e), accentColor: Color(0xff009fd6)),
      home: Scaffold(
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(canvasColor: Colors.black),
          child: BottomNavigationBar(
              currentIndex: pageIndex,
              backgroundColor: Colors.black,
              selectedItemColor: Theme.of(context).accentColor,
              unselectedItemColor: Colors.white,
              unselectedLabelStyle: TextStyle(color: Colors.white),
              showUnselectedLabels: true,
              onTap: (index) {
                setState(() {
                  pageIndex = index;
                });
              },
              items: [
                BottomNavigationBarItem(
                    title: Text('Home'),
                    icon: Icon(
                      Icons.home_outlined,
                    )),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.search,
                    ),
                    title: Text('Find')),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.download_outlined,
                    ),
                    title: Text('Downloads')),
                BottomNavigationBarItem(
                    icon: Image.asset(
                      'asset/profile.png',
                      height: 30,
                    ),
                    title: Text('My Stuff')),
              ]),
        ),
        body: screen[pageIndex],
      ),
    );
  }
}
