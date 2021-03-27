import 'package:clothing_store/utils/app_theme.dart';
import 'package:flutter/material.dart';

import 'alert_button.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi Rebeca',
                style: TextStyle(
                  color: AppTheme.silver,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 7.0),
              Text(
                'What is your outfit Today?',
                style: TextStyle(
                  color: AppTheme.mineShaft,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          AlertButton(),
        ],
      ),
    );
  }
}
