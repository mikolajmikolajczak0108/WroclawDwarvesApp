// ignore_for_file: prefer_const_constructors, sort_child_properties_last

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
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(
                color: Colors.black,
                width: 0.2,
              ),
            ),
            child: Text('Jakies krasnale'),
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
