import 'package:computiq_tasks/core/colors.dart';
import 'package:computiq_tasks/widgets/upper_part_widget/lower_part_widget.dart';
import 'package:flutter/material.dart';

class ButtonPartWidget extends StatelessWidget {
  const ButtonPartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          _SingleWidget(
            icon: 'Icon awesome-cog.png',
            text: ' Ayuda y soporte',
          ),
          _SingleWidget(
            icon: 'Icon ionic-ios-help-circle.png',
            text: 'Configuración y privacidad',
          ),
          _SingleWidget(
            icon: 'Icon ionic-ios-help-circle.png',
            text: 'Configuración y privacidad',
          ),
        ],
      ),
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
    return Padding(
      padding: EdgeInsets.only(right: 15),
      child: Container(
        padding: EdgeInsets.all(8),
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
      ),
    );
  }
}
