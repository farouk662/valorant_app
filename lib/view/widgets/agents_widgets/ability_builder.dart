import 'package:flutter/material.dart';

import '../../../core/utlis/colors.dart';

class AbilityWidgetBuilder extends StatelessWidget {
  const AbilityWidgetBuilder({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(
          Icons.circle,
          size: 6,
          color: AppColors.active,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          text,
          // textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w100,
              color: AppColors.active),
        ),
      ],
    );
  }
}
