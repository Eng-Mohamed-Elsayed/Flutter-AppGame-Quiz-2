import 'package:flutter/material.dart';
import 'package:the_millionaire/views/logo_page.dart';
import 'package:the_millionaire/views/questions_page.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes() {
    return {
      LogoPage.id: (context) => LogoPage(),
      QuestionsPage.id: (context) => QuestionsPage(),
    };
  }
}
