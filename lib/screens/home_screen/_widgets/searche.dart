import 'package:clothing_store/utils/colors.dart';
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
          color: HexColor('2a2b2a'),
        ),
        cursorColor: HexColor('a3a3a3'),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(3),
          filled: true,
          fillColor: Colors.white,
          hintText: 'Search product',
          hintStyle: TextStyle(
            color: HexColor('a3a3a3'),
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
              color: HexColor('a3a3a3'),
            ),
          ),
        ),
      ),
    );
  }
}
