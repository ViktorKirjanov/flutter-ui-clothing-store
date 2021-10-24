import 'package:clothing_store/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ItemSlider extends StatefulWidget {
  @override
  _ItemSliderState createState() => _ItemSliderState();
}

class _ItemSliderState extends State<ItemSlider> {
  late PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: 25.0),
          Expanded(
            child: Container(
              child: PageView.builder(
                physics: ClampingScrollPhysics(),
                itemCount: 4,
                controller: _controller,
                itemBuilder: (context, index) {
                  return Container(
                    height: MediaQuery.of(context).size.width / 2 - 30,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/001.png"),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Container(
            child: Center(
              child: SmoothPageIndicator(
                controller: _controller,
                count: 4,
                effect: ColorTransitionEffect(
                  spacing: 10.0,
                  dotWidth: 8.0,
                  dotHeight: 8.0,
                  dotColor: AppTheme.silver,
                  activeDotColor: AppTheme.mineShaft,
                ),
              ),
            ),
          ),
          SizedBox(height: 25.0),
        ],
      ),
    );
  }
}
