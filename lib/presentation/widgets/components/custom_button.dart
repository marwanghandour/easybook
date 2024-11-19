import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double elevation;
  final BorderRadius borderRadius;
  final EdgeInsetsGeometry padding;
  final Color? color;
  final Color? textcolor;
  final Icon? icon;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.elevation = 2.0,
    this.borderRadius = const BorderRadius.only(
      topLeft: Radius.circular(8.0),
      bottomRight: Radius.circular(8.0),
    ),
    this.padding = const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
    this.color,
    this.textcolor,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Future.delayed(const Duration(microseconds: 300), onPressed);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        elevation: elevation,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius,
        ),
        padding: padding,
        side: const BorderSide(color: Colors.transparent, width: 2),
      ),
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 200),
        child: Row(
          mainAxisSize: MainAxisSize.min, 
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) ...[
              icon!, 
              const SizedBox(width: 8.0), 
            ],
            Text(
              text,
              key: ValueKey<String>(text),
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                color: textcolor,
                letterSpacing: 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
