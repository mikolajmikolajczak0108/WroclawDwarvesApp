import 'package:flutter/material.dart';

class OptionsButton extends StatelessWidget {
  final Function handler;
  final String text;
  final Icon icon;
  OptionsButton(this.handler, this.text, this.icon);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              top: 10,
              right: 14,
              bottom: 30,
            ),
            child: OutlinedButton.icon(
              onPressed: () => handler(),
              icon: icon,
              label: Text(''),
              style: OutlinedButton.styleFrom(
                side: BorderSide(
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 0,
              top: 35,
              right: 3,
              bottom: 10,
            ),
            child: OutlinedButton(
              onPressed: () => handler(),
              child: Text(
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 11,
                ),
                text,
              ),
              style: OutlinedButton.styleFrom(
                side: BorderSide(
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
