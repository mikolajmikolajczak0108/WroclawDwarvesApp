import 'package:flutter/material.dart';

class LoginField extends StatelessWidget {
  final bool isPass;
  final String hintText;
  const LoginField(this.isPass, this.hintText, {super.key});
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
          obscureText: isPass,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            border: InputBorder.none,
            hintText: hintText,
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
