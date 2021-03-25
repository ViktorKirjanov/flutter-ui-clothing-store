import 'package:clothing_store/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                  color: HexColor('bbbbbb'),
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 7.0),
              Text(
                'What is your outfit Today?',
                style: TextStyle(
                  color: HexColor('333332'),
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          Container(
            height: 55.0,
            width: 55.0,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Container(
              child: Center(
                child: SvgPicture.asset(
                  'assets/icons/notification.svg',
                  height: 20,
                  color: HexColor('373734'),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
