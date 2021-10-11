import 'package:computiq_tasks/core/colors.dart';
import 'package:flutter/material.dart';

class LowerPartWidget extends StatelessWidget {
  const LowerPartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        _SingleWidget(
          text: 'Fotos',
          icon: 'camera-to-take-photos.png',
        ),
        _SingleWidget(
          text: 'En vivo',
          icon: 'Group 86.png',
        ),
        _SingleWidget(
          text: 'Video corto',
          icon: 'view.png',
        ),
      ],
    );
  }
}

class _SingleWidget extends StatelessWidget {
  final String icon;
  final String text;

  const _SingleWidget({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 117,
      height: 34,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: tertiaryColor,
      ),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/$icon'),
            const SizedBox(width: 10),
            Text(
              text,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
