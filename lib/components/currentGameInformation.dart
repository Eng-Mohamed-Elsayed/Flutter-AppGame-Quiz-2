import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Column currentGameInfo({required String title, required String info}) {
  return Column(
    children: [
      Text(
        title,
        style: GoogleFonts.cairo(
          textStyle: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w700,
            color: Color(0xFF91D3B8),
          ),
        ),
      ),
      Container(
        width: 150,
        height: 70,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/infoBorder.png'),
              fit: BoxFit.fill),
        ),
        child: Padding(
          padding: const EdgeInsets.all(.5),
          child: Center(
            child: Text(
              info,
              style: GoogleFonts.cairo(
                textStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
