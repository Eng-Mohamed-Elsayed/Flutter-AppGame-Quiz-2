import 'package:flutter/material.dart';
import 'package:the_millionaire/components/customStartButton.dart';

class LogoPage extends StatelessWidget {
  static final id = 'logoPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Logo image
              Image.asset(
                'assets/images/logo.png',
                width: 400,
                height: 400,
              ),
              // Start button
              customStartButton(context: context),
            ],
          ),
        ),
      ),
    );
  }
}
