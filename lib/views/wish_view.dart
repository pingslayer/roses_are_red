import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';
import 'package:provider/provider.dart';

import '../providers/video_provider.dart';

class Wish extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _WishState();
  }

}

class _WishState extends State<Wish> {

  final _scaffoldKey = GlobalKey<ScaffoldState>();
  VideoPlayerController _videoPlayercontroller;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    final videoData = Provider.of<VideoProvider>(context, listen: false);
    String videoName = videoData.item.vName;
    _videoPlayercontroller = VideoPlayerController.asset('assets/videos/$videoName');
    _initializeVideoPlayerFuture = _videoPlayercontroller.initialize();
    _videoPlayercontroller.setLooping(false);
    _videoPlayercontroller.setVolume(1.0);
    _videoPlayercontroller.addListener(() {
      if(_videoPlayercontroller.value.position == _videoPlayercontroller.value.duration) {
        Navigator.pop(context);
      }
    });
  }

  @override
  void dispose() {
    _videoPlayercontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.grey[900],
        body: FutureBuilder(
          future: _initializeVideoPlayerFuture,
          builder: (context, snapshot) {
            if(snapshot.connectionState == ConnectionState.done) {
              _videoPlayercontroller.play();
              return Center(
                child: AspectRatio(
                  aspectRatio: _videoPlayercontroller.value.aspectRatio,
                  child: VideoPlayer(_videoPlayercontroller),
                ),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
    );
  }

}
