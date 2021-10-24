import 'package:clothing_store/utils/app_theme.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String text;

  const PrimaryButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        child: Text(text),
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 20),
          primary: Colors.white,
          backgroundColor: AppTheme.mineShaft,
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
