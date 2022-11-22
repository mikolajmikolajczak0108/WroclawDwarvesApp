// ignore_for_file: prefer_const_constructors

import 'package:dwarves_app/widgets/login_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: <Widget>[
          Positioned.fill(
            //
            child: Image(
              image: AssetImage('./assets/images/background.jpg'),
              fit: BoxFit.fitHeight,
            ),
          ),
          Center(
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: 30.0, top: 50.0, right: 30.0, bottom: 20.0),
                  child: const Text(
                    'Wrocławskie Krasnale \n mobilna mapa i przewodnik',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 10),
                const Text(
                  'Witamy z powrotem!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                //textbox nick
                SizedBox(height: 20),
                LoginField(false, "Nickname"),
                //textbox password
                SizedBox(height: 20),
                LoginField(true, "Password"),
                SizedBox(height: 30),
                // log in button
                ElevatedButton(
                  child: const Text('Zaloguj'),
                  onPressed: () {
                    // Navigate to second route when tapped.
                  },
                ),
                //register
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                child: const Text('Powrót do strony głównej'),
                onPressed: () {
                  // Navigate to second route when tapped.
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
