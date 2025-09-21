import 'package:flutter/material.dart';

class AuthScreenWrapper extends StatelessWidget {
  const AuthScreenWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(child: Text("hello")),
          Align(
            alignment: Alignment.topRight,
            child: Image.asset("assets/images/auth_bird.png"),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset("assets/images/auth_fence.png"),
          ),
        ],
      ),
    );
  }
}
