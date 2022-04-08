import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Expanded presentCurrentQuestion({required String theQuestion}) {
  return Expanded(
    flex: 2,
    child: Padding(
      padding: const EdgeInsets.all(25.0),
      child: Center(
        child: Text(
          theQuestion,
          textAlign: TextAlign.center,
          style: GoogleFonts.cairo(
            textStyle: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
  );
}
