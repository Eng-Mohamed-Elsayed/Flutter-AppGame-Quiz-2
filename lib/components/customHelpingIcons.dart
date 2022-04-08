import 'package:flutter/material.dart';

Padding customHelpingIcons(
    {required Function() onPressed, required String iconName}) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
    child: TextButton(
      onPressed: onPressed,
      child: Image.asset(
        'assets/images/$iconName.png',
        width: 90,
        height: 90,
      ),
    ),
  );
}
