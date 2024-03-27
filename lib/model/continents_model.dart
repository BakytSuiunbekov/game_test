import 'package:flutter/material.dart';
import 'package:game_test/constants/app_color.dart';
import 'package:game_test/constants/app_text.dart';
import 'package:game_test/model/suroo_model.dart';

class Continents {
  Continents({
    required this.text,
    required this.color,
    required this.icon,
    this.suroo,
  });
  final String text;
  final String icon;
  final Color color;
  List<Suroo>? suroo;
}

final europe = Continents(
  color: AppColor.evropaColor,
  icon: 'europe',
  text: AppTexst.europeText,
);
final africa = Continents(
  color: AppColor.africsClolr,
  icon: 'africa',
  text: AppTexst.africaText,
);
final asia = Continents(
  color: AppColor.asiaColor,
  icon: 'asia',
  text: AppTexst.asiaText,
  suroo: asiaQuestions,
);
final australia = Continents(
  color: AppColor.australiaColor,
  icon: 'australia',
  text: AppTexst.australiaText,
);
final northAmerica = Continents(
  color: AppColor.nortAColor,
  icon: 'north_america',
  text: AppTexst.norhtAText,
);
final southAmerica = Continents(
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
