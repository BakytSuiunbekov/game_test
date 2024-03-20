import 'package:flutter/material.dart';

import 'package:game_test/components/custom_card.dart';
import 'package:game_test/constants/app_color.dart';
import 'package:game_test/constants/app_text.dart';
import 'package:game_test/model/continents_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: Icon(
              Icons.settings_outlined,
              color: AppColor.blueIconColor,
            ),
          ),
          IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
            ),
          ),
        ],
        title: const Text(
          AppTexst.appBarText,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        flexibleSpace: const Padding(
          padding: EdgeInsets.only(top: 70),
          child: Divider(
            color: AppColor.black,
          ),
        ),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 40,
          crossAxisSpacing: 20,
        ),
        padding: EdgeInsets.all(8),
        itemCount: continents.length,
        itemBuilder: (context, index) {
          final item = continents[index];
          return CustomCard(
            text: item.text,
            icon: item.icon,
            color: item.color,
          );
        },
      ),
    );
  }
}
