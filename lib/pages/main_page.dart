// ignore_for_file: prefer_const_constructors

import 'package:dwarves_app/widgets/search_field.dart';
import 'package:flutter/material.dart';
import 'package:dwarves_app/widgets/map_bottom_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 0.3 * MediaQuery.of(context).size.height,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(200)),
            boxShadow: [
              BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
            ],
          ),
          child: BottomAppBar(
            child: MapBottomBar(),
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            //
            child: Image(
              image: AssetImage('./assets/images/map.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          Column(
            children: [
              SearchField(),
            ],
          ),
        ],
      ),
    );
  }
}
