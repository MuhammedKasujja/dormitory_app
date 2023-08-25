import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SendMessageIcon extends StatelessWidget {
  final VoidCallback onPressed;
  const SendMessageIcon({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) => IconButton(
        constraints: const BoxConstraints(
          minHeight: 24,
          minWidth: 24,
        ),
        icon: SvgPicture.string(Assets.sendIcon),
        onPressed: onPressed,
        splashRadius: 24,
        tooltip: 'send',
      );
}
