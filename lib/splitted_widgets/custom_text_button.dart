import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    required this.buttonname,
  });

  final String buttonname;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        print('sign in button clicked');
      },
      child: Text(
        buttonname,
        style: const TextStyle(color: Colors.black87),
      ),
    );
  }
}
