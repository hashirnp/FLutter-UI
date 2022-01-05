import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:video_player/video_player.dart';

class ShortsHome extends StatelessWidget {
  const ShortsHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Video Player Demo',
      home: VideoPlayerScreen(),
    );
  }
}

class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen({Key? key}) : super(key: key);

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  bool isShowPlaying = false;

  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    // Create and store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // or the internet.
    _controller = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    )..initialize().then((value) => _controller.play());
    setState(() {
      isShowPlaying = false;
    });

    // Initialize the controller and store the Future for later use.
    // _initializeVideoPlayerFuture = _controller.initialize();
    //
    // // Use the controller to loop the video.
    // _controller.setLooping(true);

    super.initState();
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          setState(() {
            _controller.value.isPlaying
                ? _controller.pause()
                : _controller.play();
          });
        },
        child: RotatedBox(
          quarterTurns: 0,
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: Stack(
              children: <Widget>[
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.black),
                  child: Stack(
                    children: <Widget>[
                      VideoPlayer(_controller),
                      Center(
                        child: Container(
                          decoration: BoxDecoration(),
                          child: _controller.value.isPlaying && !isShowPlaying
                              ? Container()
                              : Icon(
                                  Icons.play_arrow_rounded,
                                  color: Colors.white.withOpacity(0.5),
                                  size: 80,
                                ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 15, top: 20, bottom: 10),
                      child: SafeArea(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          LeftPanel(),
                          RightPanel()],
                      )),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LeftPanel extends StatelessWidget {
  const LeftPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "name",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "caption",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.music_note,
                color: Colors.white,
                size: 15,
              ),
              Flexible(
                child: Text(
                  'songName',
                  style: TextStyle(color: Colors.white, height: 1.5),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}


class RightPanel extends StatelessWidget {
  const RightPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: Container(
      alignment: Alignment.bottomRight,
      height: double.infinity,
      child: Column(
        children: <Widget>[
          Container(height: MediaQuery.of(context).size.height * 0.5),
          Flexible(
              child: Container(
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.only(right: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.more_horiz, color: Colors.white, size: 30),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.thumb_up, color: Colors.white, size: 30),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '30',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.thumb_down, color: Colors.white, size: 30),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '5',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.comment, color: Colors.white, size: 30),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '30',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.share, color: Colors.white, size: 30),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Share',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        
                      ),
                      child: Image.network('https://i.imgur.com/FpwHmmL.jpg',fit: BoxFit.cover,)),
                )
              ],
            ),
          ))
        ],
      ),
    ));
  }
}

