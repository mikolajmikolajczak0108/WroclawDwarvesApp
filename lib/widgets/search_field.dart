// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25.0),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          border: Border.all(color: Theme.of(context).primaryColor),
          borderRadius: BorderRadius.circular(12),
        ),
        // ignore: prefer_const_constructors
        child: TextField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            border: InputBorder.none,
            hintText: "Wyszukaj Krasnala",
            hintStyle: const TextStyle(
              color: Colors.black38,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ),
    );
  }
}
