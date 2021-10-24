import 'package:clothing_store/utils/app_theme.dart';
import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  final String text;

  const SecondaryButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        child: Text(text),
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 20),
          primary: AppTheme.mineShaft,
          backgroundColor: AppTheme.white,
          onSurface: Colors.grey,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        ),
        onPressed: () {
          print('Pressed');
        },
      ),
    );
  }
}
