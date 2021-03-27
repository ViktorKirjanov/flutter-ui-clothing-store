import 'package:clothing_store/screens/_widgets/primary_button.dart';
import 'package:clothing_store/screens/_widgets/secondary_button.dart';
import 'package:clothing_store/utils/app_theme.dart';
import 'package:flutter/material.dart';

import '_widgets/item_content.dart';
import '_widgets/iten_slider.dart';
import '_widgets/like_button.dart';
import '_widgets/pop_button.dart';
import '_widgets/size_list.dart';

class ItemScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.alabaster,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 2,
                            child: Stack(
                              children: [
                                Container(
                                  width: double.infinity,
                                  color: AppTheme.alabaster,
                                ),
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: AppTheme.cararra,
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(75.0),
                                    ),
                                  ),
                                ),
                                ItemSlider(),
                                PopButton(),
                                LikeButton(),
                              ],
                            ),
                          ),
                          Stack(
                            children: [
                              Container(
                                width: double.infinity,
                                height: 100,
                                color: AppTheme.cararra,
                              ),
                              Container(
                                padding:
                                    EdgeInsets.fromLTRB(16.0, 40.0, 16.0, 0.0),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: AppTheme.alabaster,
                                  // color: Colors.red,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(75.0),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ItemContent(),
                                      SizedBox(height: 20.0),
                                      SizeList(),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SafeArea(
                      top: false,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            SecondaryButton(text: 'Add to Cart'),
                            SizedBox(width: 15.0),
                            PrimaryButton(text: 'Buy Now'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
