import 'dart:async';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:clothing_store/utils/colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'screens/home_screen/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Animated Navigation Bottom Bar'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  var _bottomNavIndex = 0;

  AnimationController _animationController;
  Animation<double> animation;
  CurvedAnimation curve;

  final iconList = <String>[
    'assets/icons/home.svg',
    'assets/icons/handbag.svg',
  ];

  @override
  void initState() {
    super.initState();
    final systemTheme = SystemUiOverlayStyle.light.copyWith(
      systemNavigationBarColor: HexColor('#373A36'),
      systemNavigationBarIconBrightness: Brightness.light,
    );
    SystemChrome.setSystemUIOverlayStyle(systemTheme);

    _animationController = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    curve = CurvedAnimation(
      parent: _animationController,
      curve: Interval(
        0.5,
        1.0,
        curve: Curves.fastOutSlowIn,
      ),
    );
    animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(curve);

    Future.delayed(
      Duration(seconds: 1),
      () => _animationController.forward(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: HomeScreen(),
      floatingActionButton: ScaleTransition(
        scale: animation,
        child: FloatingActionButton(
          elevation: 0,
          backgroundColor: HexColor('#333332'),
          child: Container(  
            child: Center(
              child: SvgPicture.asset(
                'assets/icons/scan.svg',
                height: 25,
                color: HexColor('#fcfcfc'),
              ),
            ),
          ),
          onPressed: () {},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        itemCount: iconList.length,
        tabBuilder: (int index, bool isActive) {
          final color = isActive ? HexColor('#becc67') : HexColor('#a4a4a4');
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Center(
                  child: SvgPicture.asset(
                    iconList[index],
                    height: 20,
                    color: color,
                  ),
                ),
              )
            ],
          );
        },
        backgroundColor: Colors.white,
        activeIndex: _bottomNavIndex,
        splashColor: HexColor('#becc67'),
        notchAndCornersAnimation: animation,
        splashSpeedInMilliseconds: 300,
        notchSmoothness: NotchSmoothness.smoothEdge,
        gapLocation: GapLocation.center,
        leftCornerRadius: 40,
        rightCornerRadius: 40,
        splashRadius: 30,
        notchMargin: 10,
        elevation: 8,
        onTap: (index) {
          print("--- page index: $index");
          setState(
            () => _bottomNavIndex = index,
          );
        },
      ),
    );
  }
}
