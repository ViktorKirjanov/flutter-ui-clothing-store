import 'package:clothing_store/screens/item_screen/item_screen.dart';
import 'package:clothing_store/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Item extends StatefulWidget {
  final String name;
  final String brand;
  final double price;
  final String image;

  const Item({
    Key? key,
    required this.name,
    required this.brand,
    required this.price,
    required this.image,
  }) : super(key: key);

  @override
  _ItemState createState() => _ItemState();
}

class _ItemState extends State<Item> {
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
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        width: MediaQuery.of(context).size.width / 2 - 30,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.width / 2 - 30,
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
                          image: AssetImage(widget.image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              child: Center(
                child: SmoothPageIndicator(
                  controller: _controller,
                  count: 4,
                  effect: ColorTransitionEffect(
                    spacing: 4.0,
                    dotWidth: 4.0,
                    dotHeight: 4.0,
                    dotColor: AppTheme.silver,
                    activeDotColor: AppTheme.mineShaft,
                  ),
                ),
              ),
            ),
            SizedBox(height: 5.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.name,
                        style: TextStyle(
                          color: AppTheme.mineShaft,
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        '\$${widget.price}',
                        style: TextStyle(
                          color: AppTheme.mineShaft,
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    widget.brand,
                    style: TextStyle(
                      color: AppTheme.silver,
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.of(context, rootNavigator: true).push(
          MaterialPageRoute<bool>(
            builder: (BuildContext context) => ItemScreen(),
          ),
        );
      },
    );
  }
}
