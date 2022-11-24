import 'package:dwarves_app/widgets/options_button.dart';
import 'package:flutter/material.dart';
import 'package:dwarves_app/pages/login_page.dart';

class NavigationButtonsList extends StatelessWidget {
  const NavigationButtonsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OptionsButton(
            () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                ),
            "Logowanie",
            const Icon(Icons.login)),
        OptionsButton(
            () => null, "Rejestracja", const Icon(Icons.account_box_rounded)),
        OptionsButton(() => null, "Statystki", const Icon(Icons.book)),
        OptionsButton(
            () => null, "O aplikacji", const Icon(Icons.question_mark)),
      ],
    );
  }
}
