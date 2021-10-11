import 'package:computiq_tasks/core/colors.dart';
import 'package:computiq_tasks/widgets/upper_part_widget/center_part.dart';
import 'package:flutter/material.dart';

import 'lower_part_widget.dart';
import 'upper_part_header.dart';

class UpperPartWidget extends StatelessWidget {
  const UpperPartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(13),
      width: 414,
      height: 221,
      decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      child: Column(
        children: [
          const UpperPartHeader(),
          const SizedBox(height: 5),
          Divider(
            color: dividerColor,
          ),
          const CenterPartWidget(),
          const SizedBox(height: 50),
          const LowerPartWidget()
        ],
      ),
    );
  }
}
