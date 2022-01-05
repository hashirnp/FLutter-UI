import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class navIcon extends StatefulWidget {
  const navIcon({Key? key}) : super(key: key);

  @override
  _navIconState createState() => _navIconState();
}

class _navIconState extends State<navIcon> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Column(
        children: [
          Icon(
            Icons.home,
            color: Colors.white,
          ),
          Text('Home',
              style: TextStyle(
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
