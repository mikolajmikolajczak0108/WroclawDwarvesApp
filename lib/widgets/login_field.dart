import 'package:flutter/material.dart';

class loginField extends StatelessWidget {
  final bool isPass;
  final String HintText;
  const loginField(this.isPass, this.HintText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          border: Border.all(color: Theme.of(context).primaryColor),
          borderRadius: BorderRadius.circular(12),
        ),
        child: TextField(
          obscureText: this.isPass,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            border: InputBorder.none,
            hintText: this.HintText,
            hintStyle: TextStyle(
              color: Colors.black38,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ),
    );
  }
}
