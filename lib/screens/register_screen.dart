import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  static String id = 'register_screen';

  const RegisterScreen({super.key});
  @override
  State<StatefulWidget> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Register Screen'),),
      body: const Center(child: Text('Register Screen'),),
    );
  }
}