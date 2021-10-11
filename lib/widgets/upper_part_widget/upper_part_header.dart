import 'package:computiq_tasks/core/colors.dart';
import 'package:flutter/material.dart';

class UpperPartHeader extends StatelessWidget {
  const UpperPartHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset('assets/Facebook_f_logo_(2019).png'),
        Expanded(child: Container()),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 37,
              height: 37,
              decoration: BoxDecoration(
                color: tertiaryColor,
                borderRadius: BorderRadius.circular(19),
              ),
              child: Image.asset('assets/messenger.png'),
            ),
            const SizedBox(width: 12),
            Container(
                width: 37,
                height: 37,
                decoration: BoxDecoration(
                  color: tertiaryColor,
                  borderRadius: BorderRadius.circular(19),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    const Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                    Positioned(
                      top: 3,
                      right: 2,
                      child: Container(
                        width: 9,
                        height: 9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: notificationDotColor,
                        ),
                      ),
                    )
                  ],
                )),
            const SizedBox(width: 12),
            Container(
              width: 37,
              height: 37,
              decoration: BoxDecoration(
                color: tertiaryColor,
                borderRadius: BorderRadius.circular(19),
              ),
              child: Image.asset('assets/messenger.png'),
            ),
            const SizedBox(width: 12),
            Image.asset('assets/141348941_3946070645427662_8778357088398883022_n.png'),
          ],
        )
      ],
    );
  }
}
