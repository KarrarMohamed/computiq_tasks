import 'package:flutter/material.dart';

class CenterPartWidget extends StatelessWidget {
  const CenterPartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5,top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/141348941_3946070645427662_8778357088398883022_n.png',
                width: 26,
                height: 26,
              ),
              const SizedBox(width: 10),
              const Text(
                '¿Qué estas pensando, Mao?',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: Image.asset(
              'assets/smile.png',
              width: 20,
              height: 20,
            ),
          ),
        ],
      ),
    );
  }
}
