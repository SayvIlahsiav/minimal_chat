import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minimal_chat/screens/login_screen.dart';
import 'package:minimal_chat/screens/register_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static String id = 'splash_screen';

  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
      backgroundColor: Colors.lightGreenAccent,
      foregroundColor: Colors.black,
      minimumSize: const Size(360.0, 64.0),
      textStyle: const TextStyle(
          fontSize: 24.0
      ),
    );

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(
                  tag: 'app_icon',
                  child: Icon(
                    CupertinoIcons.chat_bubble_2_fill,
                    color: Colors.lightGreenAccent,
                    size: 72.0,
                  ),
                ),
                SizedBox(
                  width: 18,
                ),
                Text(
                  "Minimal Chat  ",
                  style: TextStyle (
                    fontSize: 36.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightGreenAccent,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 96,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
              style: elevatedButtonStyle,
              child: const Text('Login'),
            ),
            const SizedBox(
              height: 24,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, RegisterScreen.id);
              },
              style: elevatedButtonStyle,
              child: const Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}