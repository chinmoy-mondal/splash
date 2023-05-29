
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../constants/image_strings.dart';
import '../../../../constants/text_strings.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: const AssetImage(tWelcomeScreenImage),
          height: size.height * .2,
        ),
        Text(
          tLoginTitle,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        Text(
          tLoginSubTitle,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
