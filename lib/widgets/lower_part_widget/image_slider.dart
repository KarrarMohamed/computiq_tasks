import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  const ImageSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 132,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 226,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(image: AssetImage('assets/pexels-cottonbro-4123900.png'), fit: BoxFit.fill),
            ),
          ),
          const SizedBox(width: 15),
          SizedBox(
            width: 226,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Container(
                    width: 226,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('assets/Rectangle 14.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  top: 10,
                  left: 10,
                  child: Text(
                    'Centro de información\n COVID-19',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
