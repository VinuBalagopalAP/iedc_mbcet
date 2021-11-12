import 'package:flutter/material.dart';

class Logos extends StatelessWidget {
  const Logos({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 25,
          child: Image.network(
            'https://cdn-icons-png.flaticon.com/512/59/59439.png',
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        SizedBox(
          height: 25,
          child: Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAw0fSpYH9SEgU6OE0MFJ2T5u-6ctxr6zx0w&usqp=CAU',
          ),
        ),
      ],
    );
  }
}
