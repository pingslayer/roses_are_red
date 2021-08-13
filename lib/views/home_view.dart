import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/widgets.dart';
import 'dart:io';
import 'package:google_fonts/google_fonts.dart';

import '../providers/video_provider.dart';
import '../data/video_data.dart';

class Home extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }

}

class _HomeState extends State<Home> {

  List<Video> _videosArr = [];

  void _createVideosArr() {
    VideoData videoData = new VideoData();
    _videosArr = videoData.getVideosData();
  }

  @override
  void initState() {
    super.initState();
    _createVideosArr();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/res/abstract-bg-4.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: GridView.count(
          padding: EdgeInsets.only(top: 10),
          crossAxisCount: 2,
          childAspectRatio: 3/1.3,
          scrollDirection: Axis.horizontal,
          mainAxisSpacing: 20,
          crossAxisSpacing: 10,
          children: _getWishItems(),
        ),
      ),
    );
  }

  List<Widget> _getWishItems() {
    List<Container> wishItems = [];
    int index = 0;
    final double photoBorderRadius = 10.0;
    _videosArr.forEach((item) {
      String photo = item.pName;
      String title = item.title;
      Container wishItem = Container(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          color: Colors.transparent,
          elevation: 0,
          child: InkWell(
              onTap: () {
                final videoData = Provider.of<VideoProvider>(context, listen: false);
                videoData.addSingleItem('1', item.title, item.pName, item.vName);
                Navigator.pushNamed(context, '/wish');
              },
              child: Column(
                children: <Widget>[
                  Container(margin: EdgeInsets.only(top: 25.0)),
                  /*
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset('assets/images/$photo', scale: 1.0),
                  ),
                   */
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(photoBorderRadius)),
                      border: Border.all(
                        width: 1,
                        color: Colors.grey,
                      ),
                      boxShadow: [
                        BoxShadow(color: Colors.black, blurRadius: 5.0)
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(photoBorderRadius),
                      child: Image.asset('assets/images/$photo', scale: 1.0),
                    )
                  ),
                  Container(margin: EdgeInsets.only(top: 5.0)),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lobster(
                        color: Colors.brown[900],
                        decoration: TextDecoration.underline,
                        decorationStyle: TextDecorationStyle.wavy,
                        fontSize: 24.0,
                        shadows: [
                          Shadow(
                            blurRadius: 15.0,
                            color: Colors.white,
                            offset: Offset(0.0, 0.0),
                          )
                        ]
                    ),
                  ),
                ],
              )
          ),
        )
      );
      wishItems.add(wishItem);
      index++;
    });
    return wishItems;
  }

}
