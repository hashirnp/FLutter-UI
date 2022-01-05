import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_ui/shorts_home.dart';

import 'items.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      home: View(),
    );
  }
}


class View extends StatefulWidget {
  const View({Key? key}) : super(key: key);

  @override
  _ViewState createState() => _ViewState();
}

class _ViewState extends State<View> {
  int _currentIndex = 0;

  final tabs = [
    Home(),
    ShortsHome(),
    Container(
      child: Text('3'),
    ),
    Container(
      child: Text('4'),
    ),
    Container(
      child: Text('5'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        elevation: 10,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/logo.png',
              width: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Icon(
                    Icons.cast,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Icon(
                    Icons.notifications_none,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blueAccent, shape: BoxShape.circle),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'S',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Colors.grey[900],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.short_text,
                color: Colors.white,
              ),
              label: 'Shorts'),
          BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 1),
                    borderRadius: BorderRadius.circular(50)),
                child: Icon(Icons.add, color: Colors.white, size: 30),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.subscriptions,
                color: Colors.white,
              ),
              label: 'Subscriptions'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.video_library,
                color: Colors.white,
              ),
              label: 'Library'),
        ],
        onTap: (index) {
          setState(() {
            if (index != 1) {
              _currentIndex = index;
            }else{
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ShortsHome()),
              );            }
          });
        },
      ),
    );;
  }
}


class Items extends StatelessWidget {
  late String item;

  Items({required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: item == "All" ? Colors.white : Colors.grey[850],
        border: Border.all(color: Color(0xff9f9f9f), width: 0.5),
        borderRadius: BorderRadius.circular(40),
        //shape: BoxShape.circle
      ),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Text(
          item,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: item == "All" ? Colors.black : Colors.white,
          ),
        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[850],
                    borderRadius: BorderRadius.circular(1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.explore_outlined,
                          color: Colors.white,
                        ),
                        Text(
                          'Explore',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Container(
                  color: Colors.grey,
                  height: 28,
                  width: 1,
                ),
              ),
              Row(
                children: [
                  Items(item: 'All'),
                  SizedBox(
                    width: 8,
                  ),
                  Items(item: 'Sports'),
                  SizedBox(
                    width: 8,
                  ),
                  Items(item: 'Action'),
                  SizedBox(
                    width: 8,
                  ),
                  Items(item: 'Drama'),
                  SizedBox(
                    width: 8,
                  ),
                  Items(item: 'Fiction'),
                  SizedBox(
                    width: 8,
                  ),
                  Items(item: 'Movies'),
                  SizedBox(
                    width: 8,
                  ),
                  Items(item: 'Horror'),
                  SizedBox(
                    width: 8,
                  ),
                  Items(item: 'Flutter'),
                  SizedBox(
                    width: 8,
                  ),
                  Items(item: 'Mr Cyb'),
                  SizedBox(
                    width: 8,
                  ),
                  Items(item: 'Coding in flow'),
                  SizedBox(
                    width: 8,
                  ),
                  Items(item: 'Instagram'),
                  SizedBox(
                    width: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'SEND FEEDBACK',
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Flexible(
          child: ListView.builder(
              itemCount: items.length,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Flexible(
                  child: Container(
                    child: Column(
                      children: [
                        Image.network(
                          items[index].thumb,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(items[index].logo),
                          ),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  items[index].title,
                                  maxLines: 2,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Icon(Icons.more_vert,
                                  color: Colors.grey, size: 18)
                            ],
                          ),
                          subtitle: Container(
                            margin: EdgeInsets.only(top: 2),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      items[index].name,
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 11),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      items[index].views,
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 11),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      items[index].date,
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 11),
                                    ),
                                  ],
                                ),
                                Container()
                              ],
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.grey[800],
                          height: 5,
                          width: double.infinity,
                        )
                      ],
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
