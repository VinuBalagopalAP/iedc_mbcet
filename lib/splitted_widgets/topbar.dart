import 'package:flutter/material.dart';
import 'package:iedc_mbcet/splitted_widgets/custom_text_button.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CircleAvatar(
          backgroundImage: NetworkImage(
            'https://static.vecteezy.com/system/resources/thumbnails/000/241/070/small/flat-boy-with-vintage-glasses-avatar-vector-illustration.jpg',
          ),
        ),
        Row(
          children: const [
            CustomTextButton(
              buttonname: 'Sign In',
            ),
            CustomTextButton(
              buttonname: 'Sign Up',
            ),
          ],
        ),
      ],
    );
  }
}
