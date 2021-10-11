import 'package:computiq_tasks/core/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LowerPartHeader extends StatelessWidget {
  const LowerPartHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Menú',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Center(
                child: Icon(
              Icons.add,
              color: Colors.white,
              size: 30,
            )),
            const SizedBox(width: 10),
            const Text(
              'Modo oscuro',
              style: TextStyle(
                fontSize: 13,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 10),
            Transform.scale(
              scale: 0.7,
              child: CupertinoSwitch(
                value: true,
                onChanged: (_) {},
                activeColor: switchActiveColor,
              ),
            ),

            // Image.asset(
            //   'assets/Group 104.png',
            //   width: 27,
            //   height: 15,
            // ),
          ],
        )
      ],
    );
  }
}
