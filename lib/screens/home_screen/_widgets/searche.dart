import 'package:clothing_store/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        autocorrect: false,
        autofillHints: null,
        autofocus: false,
        style: TextStyle(
          color: AppTheme.mineShaft,
        ),
        cursorColor: AppTheme.silverChalice,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(3),
          filled: true,
          fillColor: Colors.white,
          hintText: 'Search product',
          hintStyle: TextStyle(
            color: AppTheme.silverChalice,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
            borderSide: BorderSide.none,
          ),
          prefixIcon: Container(
            margin: EdgeInsets.all(13),
            child: SvgPicture.asset(
              'assets/icons/magnifying-glass.svg',
              height: 10,
              color: AppTheme.silverChalice,
            ),
          ),
        ),
      ),
    );
  }
}
