import '../providers/video_provider.dart';

class VideoData {

  VideoData() {}

  List<Video> getVideosData() {
    List<Video> _videosArr = [];

    Video _vid1 = new Video();
    _vid1.title = 'Pranali';
    _vid1.pName = 'pranali.png';
    _vid1.vName = 'pranali.mp4';
    _videosArr.add(_vid1);

    Video _vid2 = new Video();
    _vid2.title = 'Shruti';
    _vid2.pName = 'shruti.png';
    _vid2.vName = 'shruti.mp4';
    _videosArr.add(_vid2);

    Video _vid3= new Video();
    _vid3.title = 'Sneha';
    _vid3.pName = 'sneha.png';
    _vid3.vName = 'sneha.mp4';
    _videosArr.add(_vid3);

    Video _vid4= new Video();
    _vid4.title = 'Chacha';
    _vid4.pName = 'chacha.png';
    _vid4.vName = 'chacha.mp4';
    _videosArr.add(_vid4);

    // temp
    Video _vid5= new Video();
    _vid5.title = 'Mohaneesh';
    _vid5.pName = 'mohaneesh.png';
    _vid5.vName = 'mohaneesh.mp4';
    _videosArr.add(_vid5);

    Video _vid6= new Video();
    _vid6.title = 'Ujwal';
    _vid6.pName = 'ujwal.png';
    _vid6.vName = 'ujwal.mp4';
    _videosArr.add(_vid6);

    Video _vid7= new Video();
    _vid7.title = 'Jinal';
    _vid7.pName = 'jinal.jpg';
    _vid7.vName = 'jinal.mp4';
    _videosArr.add(_vid7);

    Video _vid9= new Video();
    _vid9.title = 'Priyanka';
    _vid9.pName = 'priyanka.jpg';
    _vid9.vName = 'priyanka.mp4';
    _videosArr.add(_vid9);

    Video _vid8= new Video();
    _vid8.title = 'Instill Group';
    _vid8.pName = 'instill_group.jpg';
    _vid8.vName = 'instill_group.mp4';
    _videosArr.add(_vid8);

    Video _bongo= new Video();
    _bongo.title = 'Ron';
    _bongo.pName = 'bongo.jpg';
    _bongo.vName = 'bongo.mp4';
    _videosArr.add(_bongo);

    return _videosArr;
  }

}