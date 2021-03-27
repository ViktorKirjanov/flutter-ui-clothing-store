import 'package:clothing_store/utils/app_theme.dart';
import 'package:flutter/material.dart';

class ItemContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Sweater',
              style: TextStyle(
                color: AppTheme.mineShaft,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              '\$9.99',
              style: TextStyle(
                color: AppTheme.mineShaft,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        SizedBox(height: 5.0),
        Text(
          'Bershka',
          style: TextStyle(
            color: AppTheme.silver,
            fontSize: 12,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 5.0),
        Text(
          'Cute knit sweater with lime color will seems good if it is pair with basic jeans kind of mini tartan skirt',
          style: TextStyle(
            color: AppTheme.silverChalice,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            height: 2.0,
          ),
        ),
      ],
    );
  }
}
