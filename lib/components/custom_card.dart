import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:game_test/constants/app_color.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.icon,
    required this.text,
    required this.color,
  });
  final String text;
  final String icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColor.white,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 30,
            color: const Color(0xffEEEEEE),
            child: Center(
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Expanded(
            child: SvgPicture.asset(
              'assets/icons/$icon.svg',
              // width: 60,
              fit: BoxFit.fill,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
