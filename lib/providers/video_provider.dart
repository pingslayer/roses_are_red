import 'package:flutter/foundation.dart';

class Video {

  String id;
  String title;
  String pName;
  String vName;

  Video({this.id, this.title, this.pName, this.vName});

}

class VideoProvider with ChangeNotifier {

  Video _item;

  Video get item {
    return _item;
  }

  void addSingleItem(String id, String title, String pName, String vName) {
    _item = Video(id: id, title: title, pName: pName, vName: vName);
  }
}