import 'package:clothing_store/utils/app_theme.dart';
import 'package:flutter/material.dart';

class Dot extends StatelessWidget {
  final bool active;

  const Dot({Key? key, this.active = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Container(
        height: 4,
        width: 4,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: active ? Colors.white : AppTheme.emperor,
        ),
      ),
    );
  }
}
