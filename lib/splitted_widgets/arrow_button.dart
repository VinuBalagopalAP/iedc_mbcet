import 'package:flutter/material.dart';
import 'package:iedc_mbcet/splitted_widgets/forget_password.dart';

class ArrowButton extends StatelessWidget {
  const ArrowButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const ForgetPassword(),
        Container(
          padding: const EdgeInsets.all(20.0),
          child: const Icon(
            Icons.arrow_forward,
            color: Colors.white,
          ),
          decoration: BoxDecoration(
            color: Colors.blueAccent.withOpacity(0.4),
            borderRadius: const BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
        ),
      ],
    );
  }
}
