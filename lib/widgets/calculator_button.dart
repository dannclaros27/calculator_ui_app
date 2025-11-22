import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String label;
  final VoidCallback? onTap;
  final bool isPrimary;
  final bool isAccent;
  final bool isWide;

  const CalculatorButton({
    super.key,
    required this.label,
    this.onTap,
    this.isPrimary = false,
    this.isAccent = false,
    this.isWide = false,
  });

  @override
  Widget build(BuildContext context) {
    final baseColor = Colors.grey.shade800;
    final primaryColor = Colors.lightGreen.shade600;
    final accentColor = Colors.grey.shade600;

    Color backgroundColor = baseColor;
    Color textColor = Colors.white;

    if (isPrimary) {
      backgroundColor = primaryColor;
    } else if (isAccent) {
      backgroundColor = accentColor;
    }

    return Expanded(
      flex: isWide ? 2 : 1,
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Material(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(40),
          child: InkWell(
            borderRadius: BorderRadius.circular(40),
            onTap: onTap,
            child: Container(
              height: 64,
              alignment: Alignment.center,
              child: Text(
                label,
                style: TextStyle(
                  color: textColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
