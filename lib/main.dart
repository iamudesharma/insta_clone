import 'package:flutter/material.dart';
import 'package:insta_clone/constants/constants.dart';
import 'package:insta_clone/pages/desktop_page.dart';
import 'package:insta_clone/pages/mobile_page.dart';
import 'package:insta_clone/pages/smallpage.dart';
import 'package:insta_clone/pages/web_page.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.instabackground,
      body: Container(
        width: context.screenWidth,
        child: VxResponsive(
          large: DesktopPage(),
          xlarge: DesktopPage(),
          medium: WebPage(),
          small: SmallPage(),
          xsmall: MobilePage(),
        ),
      ),
    );
  }
}
