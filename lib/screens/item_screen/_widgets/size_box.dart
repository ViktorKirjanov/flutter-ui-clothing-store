import 'package:clothing_store/utils/app_theme.dart';
import 'package:flutter/material.dart';

class SizeBox extends StatelessWidget {
  final String text;
  final bool active;

  const SizeBox({
    Key? key,
    required this.text,
    this.active = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.0,
      width: 45.0,
      decoration: BoxDecoration(
        color: active ? AppTheme.manz : Colors.white,
        shape: BoxShape.circle,
        border: Border.all(
          color: active ? AppTheme.manz : AppTheme.silver,
          width: 1.5,
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: AppTheme.mineShaft,
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
