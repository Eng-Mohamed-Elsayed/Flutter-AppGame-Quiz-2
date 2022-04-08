import 'package:flutter/material.dart';
import 'package:the_millionaire/routes/routes.dart';
import 'package:the_millionaire/views/logo_page.dart';

void main() {
  runApp(MyApp());
}

// *this code is created by Kholoud Aljadaani and Nouf Alharthi

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'من سيربح المليون؟',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: LogoPage.id,
      routes: AppRoutes.routes(),
    );
  }
}
