import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class OptionsButton extends StatelessWidget {
  final Function handler;
  final String text;
  final Icon icon;
  const OptionsButton(this.handler, this.text, this.icon);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: OutlinedButton.icon(
              onPressed: () => handler(),
              icon: icon,
              label: const AutoSizeText(''),
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
          Expanded(
            child: OutlinedButton(
              onPressed: () => handler(),
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: Colors.transparent,
                ),
              ),
              child: AutoSizeText(
                maxLines: 1,
                minFontSize: 10,
                maxFontSize: 14,
                textAlign: TextAlign.center,
                // ignore: prefer_const_constructors
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 11,
                ),
                text,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
