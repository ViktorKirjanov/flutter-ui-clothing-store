import 'package:flutter/material.dart';

import 'main_banner.dart';

class MainBannerList extends StatefulWidget {
  @override
  _MainBannerListState createState() => _MainBannerListState();
}

class _MainBannerListState extends State<MainBannerList> {
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175,
      child: PageView(
        controller: _pageController,
        children: [
          MainBanner(index: 1),
          MainBanner(index: 2),
          MainBanner(index: 3),
        ],
      ),
    );
  }
}
