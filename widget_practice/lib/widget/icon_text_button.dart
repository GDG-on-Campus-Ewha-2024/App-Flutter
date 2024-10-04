import 'package:flutter/material.dart';

class IconTextButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  final double iconSize;
  final double fontSize;

  const IconTextButton({
    Key? key,
    required this.icon,
    required this.label,
    this.color = Colors.grey,
    this.iconSize = 28,
    this.fontSize = 12,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: iconSize, color: color,),
        Text(
          label,
          style: TextStyle(fontSize: fontSize, color: color,),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}