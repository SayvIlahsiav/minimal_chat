import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              CupertinoIcons.chat_bubble_2_fill,
              color: Colors.lightGreen,
              size: 120.0,
            ),
            Text(
              "Minimal Chat",
              style: TextStyle (
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}