import 'package:clothing_store/utils/app_theme.dart';
import 'package:flutter/material.dart';

class LikeButton extends StatefulWidget {
  @override
  _LikeButtonState createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool _favorite = false;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 40,
      bottom: 40,
      child: Material(
        color: AppTheme.mineShaft,
        borderRadius: BorderRadius.circular(50),
        child: InkWell(
          borderRadius: BorderRadius.circular(50),
          radius: 30,
          splashColor: Colors.transparent,
          highlightColor: Colors.grey,
          child: Container(
            width: 60,
            height: 60,
            child: Icon(
              Icons.favorite,
              color: !_favorite ? Colors.white : Colors.red,
              size: 24,
            ),
          ),
          onTap: () {
            setState(() {
              _favorite = !_favorite;
            });
          },
        ),
      ),
    );
  }
}
