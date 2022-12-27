import 'dart:async';
import 'package:flutter/material.dart';
import 'package:music_player/const_elements/const.dart';
import 'package:music_player/ui/all_songs/all_songs_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const AllSongs()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: cBlackColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                "assets/images/music_icon.png",
                height: 300,
              ),
              const SizedBox(
                height: 5,
              ),
              const CircularProgressIndicator(
                  strokeWidth: 2, color: cLightPurple),
              const Text(
                "Music Play",
                style: TextStyle(fontSize: 30),
              )
            ],
          ),
        ));
  }
}
