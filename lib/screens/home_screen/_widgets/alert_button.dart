import 'package:clothing_store/utils/app_theme.dart';
import 'package:flutter/material.dart';

class AlertButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(50),
      child: InkWell(
        borderRadius: BorderRadius.circular(50),
        radius: 25,
        splashColor: Colors.transparent,
        highlightColor: Colors.grey,
        child: Container(
          width: 55,
          height: 55,
          child: Icon(
            Icons.notifications_active,
            color: AppTheme.mineShaft,
            size: 30,
          ),
        ),
        onTap: () {},
      ),
    );
  }
}
