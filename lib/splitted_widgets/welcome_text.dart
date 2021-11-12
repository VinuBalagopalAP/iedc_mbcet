import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        text: 'Welcome Back,',
        style: TextStyle(
          color: Colors.black,
          fontSize: 36,
        ),
        children: [
          TextSpan(
            text: '\nSophie',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 38,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
