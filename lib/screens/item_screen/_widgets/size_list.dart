import 'package:clothing_store/screens/item_screen/_widgets/size_box.dart';
import 'package:clothing_store/utils/app_theme.dart';
import 'package:flutter/material.dart';

class SizeList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Shoose Size',
          style: TextStyle(
            color: AppTheme.silver,
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 8.0),
        Row(
          children: [
            SizeBox(text: 'XS'),
            SizedBox(width: 10),
            SizeBox(text: 'S', active: true),
            SizedBox(width: 10),
            SizeBox(text: 'M'),
            SizedBox(width: 10),
            SizeBox(text: 'L'),
            SizedBox(width: 10),
            SizeBox(text: 'XL'),
          ],
        ),
      ],
    );
  }
}
