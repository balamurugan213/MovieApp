import 'package:flutter/material.dart';
import 'package:movieapp/pages/homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie App',
      theme: ThemeData(
        primaryColor: Color(0xFFBCBCBC),
        accentColor: Color(0xFFFEE77A),
        scaffoldBackgroundColor: Colors.black54,
        //   primarySwatch: Colors.yellow[300],
        //   accentColor: Colors.yellow[300],
        //   //scaffoldBackgroundColor:Colors.black87,
      ),
      home: HomePage(),
      //  DescriptionPage()
    );
  }
}
