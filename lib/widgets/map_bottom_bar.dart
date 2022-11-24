// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:auto_size_text/auto_size_text.dart';
import 'package:dwarves_app/widgets/navigation_buttons_list.dart';
import 'package:flutter/material.dart';

class MapBottomBar extends StatelessWidget {
  const MapBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            height: 0.3 * MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(40.0)),
              border: Border.all(
                color: Colors.transparent,
                width: 0.2,
              ),
            ),
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      AutoSizeText(
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        'Krasnale w pobliżu',
                      ),
                      Spacer(),
                      Image.asset(
                        height: 20,
                        width: 20,
                        './assets/images/krasnal.jpg',
                      )
                    ],
                  ),
                ),
                Flexible(
                  // For positioning
                  //child: Container(
                  //decoration: BoxDecoration(
                  // border: Border.all(
                  //color: Colors.black,
                  // width: 4,
                  // ),
                  // ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            AutoSizeText('smth'),
                            AutoSizeText('smth'),
                            AutoSizeText('smth'),
                            AutoSizeText('smth'),
                            AutoSizeText('smth'),
                          ],
                        ),
                        SizedBox(height: 80),
                        Row(
                          children: const [
                            AutoSizeText('abc'),
                            AutoSizeText('abc'),
                            AutoSizeText('abc'),
                            AutoSizeText('abc'),
                            AutoSizeText('abc'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                //),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            height: 0.1 * MediaQuery.of(context).size.height,
            child: Container(
              color: const Color(0xFFDFE1E0),
              child: NavigationButtonsList(),
            ),
          ),
        ),
      ],
    );
  }
}
