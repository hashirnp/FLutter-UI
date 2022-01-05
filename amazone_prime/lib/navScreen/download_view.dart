import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';

class DownloadView extends StatefulWidget {
  const DownloadView({Key? key}) : super(key: key);

  @override
  _DownloadViewState createState() => _DownloadViewState();
}

class _DownloadViewState extends State<DownloadView> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.black));
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: AppBar(
            // Here we create one to set status bar color
            backgroundColor: Colors
                .black, // Set any color of status bar you want; or it defaults to your theme's primary color
          )),
      body: Stack(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 10),
                child: Text(
                  '0 Videos  •  0 Secs  •  0 MB',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'No Videos Downloaded',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
