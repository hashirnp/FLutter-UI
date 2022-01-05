import 'package:amazone_prime/topBarScreen/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with SingleTickerProviderStateMixin {



  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 4, initialIndex: 0, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              'asset/logo.png',
              height: 30,
            ),
          ),
          centerTitle: true,
          bottom: TabBar(
              controller: _tabController,
              indicatorColor: Colors.white,
              tabs: <Widget>[
                new Tab(text: 'Home'),
                new Tab(text: 'Tv Shows'),
                new Tab(text: 'Movies'),
                new Tab(text: 'Kids'),
              ]),
        ),

        body: TabBarView(children: [
          HomeBarView(),
          HomeBarView(),
          HomeBarView(),
          HomeBarView(),

        ],
        controller: _tabController,)

    );
  }
}

