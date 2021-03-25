import 'package:clothing_store/utils/colors.dart';
import 'package:flutter/material.dart';

import '_widgets/banner/banners.dart';
import '_widgets/header.dart';
import '_widgets/item.dart';
import '_widgets/searche.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#f3f3f0'),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
              SizedBox(height: 25.0),
              Search(),
              SizedBox(height: 25.0),
              MainBannerList(),
              SizedBox(height: 25.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Special Items',
                      style: TextStyle(
                        color: HexColor('333332'),
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 25.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Item(
                          name: 'Sweater',
                          brand: 'Zara',
                          price: 11.25,
                          image: 'assets/images/001.png',
                        ),
                        Item(
                          name: 'T-Shirt',
                          brand: 'Bershka',
                          price: 3.99,
                          image: 'assets/images/002.png',
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Item(
                          name: 'Sweater',
                          brand: 'Zara',
                          price: 11.25,
                          image: 'assets/images/001.png',
                        ),
                        Item(
                          name: 'T-Shirt',
                          brand: 'Bershka',
                          price: 3.99,
                          image: 'assets/images/002.png',
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Item(
                          name: 'Sweater',
                          brand: 'Zara',
                          price: 11.25,
                          image: 'assets/images/001.png',
                        ),
                        Item(
                          name: 'T-Shirt',
                          brand: 'Bershka',
                          price: 3.99,
                          image: 'assets/images/002.png',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
