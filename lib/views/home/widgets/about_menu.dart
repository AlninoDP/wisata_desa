import 'package:flutter/material.dart';

class AboutMenu extends StatelessWidget {
  const AboutMenu({
    super.key,
    required this.icon,
    required this.text,
    this.iconColor,
  });
  final IconData icon;
  final String text;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 30,
          color: iconColor,
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
