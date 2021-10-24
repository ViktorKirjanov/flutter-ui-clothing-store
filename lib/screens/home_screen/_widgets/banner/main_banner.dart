import 'package:clothing_store/utils/app_theme.dart';
import 'package:flutter/material.dart';

import 'dot.dart';

class MainBanner extends StatelessWidget {
  final int index;

  const MainBanner({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        children: [
          Align(
            child: Container(
              height: 175,
              width: MediaQuery.of(context).size.width,
              decoration: new BoxDecoration(
                color: AppTheme.mineShaft,
                borderRadius: new BorderRadius.all(
                  Radius.elliptical(50, 45),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Last discount',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      'up to 70%',
                      style: TextStyle(
                        color: AppTheme.manz,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      'Shop now & Get Free \nshipping to your House',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          height: 1.6),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 30,
            bottom: 30,
            child: Row(
              children: [
                Dot(active: index == 1),
                Dot(active: index == 2),
                Dot(active: index == 3),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 20,
            child: Container(
              height: 170,
              width: 100,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/banner1.png"),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
