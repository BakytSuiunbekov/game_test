import 'package:flutter/material.dart';
import 'package:game_test/components/app_bar_widget.dart';
import 'package:game_test/components/custom_button.dart';
import 'package:game_test/components/slider.dart';
import 'package:game_test/model/suroo_model.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key, required this.suroo});
  final List<Suroo> suroo;

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  int index = 1;
  int tuuraJoop = 0;
  int katajoop = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff0f0f0),
      appBar: AppBar(
        backgroundColor: const Color(0xfff0f0f0),
        title: AppBarWidget(
          suroolordunSany: index,
          tuuraJoop: tuuraJoop,
          kataJoop: katajoop,
        ),
      ),
      body: Column(
        children: [
          sliderWidget(value: index.toDouble()),
          const SizedBox(height: 20),
          Text(
            widget.suroo[index].text,
            style: const TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.w500,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
              child: SizedBox(
                width: double.infinity,
                child: Image.asset(
                  'assets/images/${widget.suroo[index].image}',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          CustomButton(
            onTap: (isTrue) {
              if (isTrue == true) {
                tuuraJoop++;
              } else {
                katajoop++;
              }
              setState(() {
                index++;
              });
              if (index == widget.suroo.length) {
                index--;
                showDialog<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Тестин жыйынтыгы'),
                        content: Text(
                          'Туура жообтор: $tuuraJoop'
                          'Ката жооптоп: $katajoop',
                        ),
                        actions: <Widget>[
                          TextButton(
                            style: TextButton.styleFrom(
                              textStyle: Theme.of(context).textTheme.labelLarge,
                            ),
                            child: const Text('Кайра баштоо'),
                            onPressed: () {
                              setState(() {
                                index = 0;
                                katajoop = 0;
                                tuuraJoop = 0;
                              });
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    });
              }
            },
            jooptor: widget.suroo[index].jooptor,
          ),
        ],
      ),
    );
  }
}
