import 'package:computiq_tasks/core/colors.dart';
import 'package:flutter/material.dart';

class LowerButtons extends StatelessWidget {
  const LowerButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _SingleWidget(
              icon: 'youtube.png',
              extraIcon: 'Ellipse 30.png',
              text: 'Videos en Watch',
            ),
            SizedBox(width: 4),
            _SingleWidget(
              icon: 'youtube.png',
              extraIcon: 'Ellipse 30.png',
              text: 'Videos en Watch',
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _SingleWidget(
              icon: 'heart.png',
              extraIcon: 'Group 107.png',
              text: 'Parejas',
            ),
            SizedBox(width: 4),
            _SingleWidget(
              icon: 'Icon material-games.png',
              extraIcon: 'Group 155.png',
              text: 'Videojuegos',
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _SingleWidget(
              icon: 'Icon awesome-shopping-bag.png',
              text: 'Exampleos',
            ),
            SizedBox(width: 4),
            _SingleWidget(
              icon: 'Icon awesome-bookmark.png',
              text: 'Guardados',
            ),
          ],
        )
      ],
    );
  }
}

class _SingleWidget extends StatelessWidget {
  final String icon;
  final String? extraIcon;
  final String text;

  const _SingleWidget({
    Key? key,
    required this.icon,
    this.extraIcon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 5),
      child: Container(
        padding: EdgeInsets.all(13),
        width: 184,
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: tertiaryColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (extraIcon != null)
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Image.asset('assets/$extraIcon'),
              ),
            if (extraIcon != null) const SizedBox(height: 5),
            Expanded(
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
            )
          ],
        ),
      ),
    );
  }
}
