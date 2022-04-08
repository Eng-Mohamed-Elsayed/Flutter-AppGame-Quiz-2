import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_millionaire/views/questions_page.dart';

Container customStartButton({required BuildContext context}) {
  return Container(
    child: Padding(
      padding: EdgeInsets.fromLTRB(0, 5, 0, 15),
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, QuestionsPage.id);
        },
        child: Container(
          width: 250,
          height: 60,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/answer_box.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                'إبدأ اللعب',
                style: GoogleFonts.cairo(
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
