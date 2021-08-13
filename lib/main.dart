import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

import './providers/video_provider.dart';

import './views/splash_view.dart';
import './views/home_view.dart';
import './views/wish_view.dart';

void main() => runApp(MyApp());

final GlobalKey<NavigatorState> nav = GlobalKey<NavigatorState>();

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }

}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => VideoProvider(),
        )
      ],
      child: MaterialApp(
          navigatorKey: nav,
          title: 'Roses are red',
          theme: ThemeData(
            fontFamily: 'Roboto',
            primaryColor: Colors.red[900],
            backgroundColor: Colors.grey[900],
          ),
          initialRoute: '/splash',
          routes: {
            '/splash': (context) => Splash(),
            '/home': (context) => Home(),
            '/wish': (context) => Wish(),
          }
      )
    );

  }

}
