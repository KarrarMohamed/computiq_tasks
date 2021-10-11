import 'package:computiq_tasks/core/colors.dart';
import 'package:computiq_tasks/widgets/lower_part_widget/lower_part_widget_frame.dart';
import 'package:flutter/material.dart';

import 'widgets/upper_part_widget/upper_part_frame.dart';

void main() {
  runApp(ComputiqApp());
}

class ComputiqApp extends StatelessWidget {
  const ComputiqApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ComputiqApp',
      home: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: Column(
        children: const [
          UpperPartWidget(),
          SizedBox(height: 20),
          Expanded(child: LowerPartWidget()),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: secondaryColor,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              color: Color(0xFFCFD7ED),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Stack(
              children: [
                Icon(
                  Icons.video_library,
                  color: Color(0xFFCFD7ED),
                ),
                Positioned(
                  top: 0.1,
                  right: 1,
                  child: Container(
                    width: 11,
                    height: 11,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF31954),
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Stack(
              children: [
                Image.asset('assets/trolley.png'),
                Positioned(
                  top: 0.1,
                  right: 1,
                  child: Container(
                    width: 11,
                    height: 11,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF31954),
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            label: '',
          ),

        ],
      ),
    );
  }
}
