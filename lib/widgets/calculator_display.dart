import 'package:flutter/material.dart';

class CalculatorDisplay extends StatelessWidget {
  final String value;
  final String? operation;

  const CalculatorDisplay({
    super.key,
    required this.value,
    this.operation,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      alignment: Alignment.bottomRight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          if (operation != null && operation!.isNotEmpty)
            Text(
              operation!,
              style: TextStyle(
                color: Colors.white.withValues(alpha: 0.7),
                fontSize: 20,
              ),
            ),
          Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 48,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
