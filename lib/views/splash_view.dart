import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _SplashState();
  }

}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/home');
        },
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/res/well-3.gif'),
                fit: BoxFit.cover,
              )
          ),
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Center(
              child: Text(
                  'Let the light from your memory flow by to let your near and dear ones pamper you !',
                  style: GoogleFonts.rougeScript(
                    fontSize: 52.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: Colors.black,
                        offset: Offset(5.0, 5.0),
                      )
                    ]
                  ),
                  textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }

}
