import 'package:flutter/material.dart';

class AppBarIcon extends StatelessWidget {
  final IconData icon;
  final Color color;
  final double opacity;
  final VoidCallback press;
  const AppBarIcon(
      {super.key,
      required this.icon,
      this.color = Colors.black,
      required this.press,
      this.opacity = 0.2});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            shape: BoxShape.circle, color: Colors.grey.withOpacity(opacity)),
        child: Icon(
          icon,
          color: color,
        ),
      ),
    );
  }
}
