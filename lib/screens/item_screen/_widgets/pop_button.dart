import 'package:clothing_store/utils/app_theme.dart';
import 'package:flutter/material.dart';

class PopButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 30,
      top: 50,
      child: Material(
        borderRadius: BorderRadius.circular(50),
        child: InkWell(
          borderRadius: BorderRadius.circular(50),
          radius: 25,
          splashColor: Colors.transparent,
          highlightColor: Colors.grey,
          child: Container(
            width: 50,
            height: 50,
            child: Icon(
              Icons.arrow_back,
              color: AppTheme.mineShaft,
              size: 30,
            ),
          ),
          onTap: () => Navigator.pop(context),
        ),
      ),
    );
  }
}
