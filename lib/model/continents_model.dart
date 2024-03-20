import 'package:flutter/material.dart';
import 'package:game_test/constants/app_color.dart';
import 'package:game_test/constants/app_text.dart';

class Continents {
  const Continents({
    required this.text,
    required this.color,
    required this.icon,
  });
  final String text;
  final String icon;
  final Color color;
}

const europe = Continents(
  color: AppColor.evropaColor,
  icon: 'europe',
  text: AppTexst.europeText,
);
const africa = Continents(
  color: AppColor.africsClolr,
  icon: 'africa',
  text: AppTexst.africaText,
);
const asia = Continents(
  color: AppColor.asiaColor,
  icon: 'asia',
  text: AppTexst.asiaText,
);
const australia = Continents(
  color: AppColor.australiaColor,
  icon: 'australia',
  text: AppTexst.australiaText,
);
const northAmerica = Continents(
  color: AppColor.nortAColor,
  icon: 'north_america',
  text: AppTexst.norhtAText,
);
const southAmerica = Continents(
  color: AppColor.southAColor,
  icon: 'south_america',
  text: AppTexst.southAText,
);

List<Continents> continents = [
  europe,
  asia,
  northAmerica,
  southAmerica,
  africa,
  australia,
];
