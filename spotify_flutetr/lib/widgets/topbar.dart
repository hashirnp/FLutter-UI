import 'package:flutter/material.dart';

class topBar extends StatefulWidget {
  const topBar({Key? key}) : super(key: key);

  @override
  _topBarState createState() => _topBarState();
}

class _topBarState extends State<topBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'To Get You Started',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.notifications_outlined, size: 30),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.watch_later_outlined,
                  size: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.settings_outlined,
                  size: 30,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
