import 'package:computiq_tasks/core/colors.dart';
import 'package:flutter/material.dart';

import 'buttons_part.dart';
import 'header.dart';
import 'image_slider.dart';
import 'lower_buttons.dart';

class LowerPartWidget extends StatelessWidget {
  const LowerPartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(13),
          topRight: Radius.circular(13),
        ),
      ),
      child: Column(
        children: const [
          LowerPartHeader(),
          SizedBox(height: 20),
          ButtonPartWidget(),
          SizedBox(height: 20),
          ImageSlider(),
          SizedBox(height: 20),
          Expanded(
            child: LowerButtons(),
          ),
        ],
      ),
    );
  }
}
