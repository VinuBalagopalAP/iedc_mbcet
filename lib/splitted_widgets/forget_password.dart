import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        print('Forget Password clicked');
      },
      child: const Text(
        'Forget Password?',
        style: TextStyle(color: Colors.black87),
      ),
    );
  }
}
