import 'package:flutter/material.dart';
import 'calculator_button.dart';

class CalculatorKeyboard extends StatelessWidget {
  final void Function(String value)? onButtonPressed;

  const CalculatorKeyboard({
    super.key,
    this.onButtonPressed,
  });

  void _handleTap(String label) {
    if (onButtonPressed != null) {
      onButtonPressed!(label);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CalculatorButton(
              label: 'AC',
              isAccent: true,
              onTap: () => _handleTap('AC'),
            ),
            CalculatorButton(
              label: '+/-',
              isAccent: true,
              onTap: () => _handleTap('+/-'),
            ),
            CalculatorButton(
              label: '%',
              isAccent: true,
              onTap: () => _handleTap('%'),
            ),
            CalculatorButton(
              label: '÷',
              isPrimary: true,
              onTap: () => _handleTap('÷'),
            ),
          ],
        ),
        Row(
          children: [
            CalculatorButton(
              label: '7',
              onTap: () => _handleTap('7'),
            ),
            CalculatorButton(
              label: '8',
              onTap: () => _handleTap('8'),
            ),
            CalculatorButton(
              label: '9',
              onTap: () => _handleTap('9'),
            ),
            CalculatorButton(
              label: '×',
              isPrimary: true,
              onTap: () => _handleTap('×'),
            ),
          ],
        ),
        Row(
          children: [
            CalculatorButton(
              label: '4',
              onTap: () => _handleTap('4'),
            ),
            CalculatorButton(
              label: '5',
              onTap: () => _handleTap('5'),
            ),
            CalculatorButton(
              label: '6',
              onTap: () => _handleTap('6'),
            ),
            CalculatorButton(
              label: '−',
              isPrimary: true,
              onTap: () => _handleTap('−'),
            ),
          ],
        ),
        Row(
          children: [
            CalculatorButton(
              label: '1',
              onTap: () => _handleTap('1'),
            ),
            CalculatorButton(
              label: '2',
              onTap: () => _handleTap('2'),
            ),
            CalculatorButton(
              label: '3',
              onTap: () => _handleTap('3'),
            ),
            CalculatorButton(
              label: '+',
              isPrimary: true,
              onTap: () => _handleTap('+'),
            ),
          ],
        ),
        // Fila: 0 (ancho), ., =
        Row(
          children: [
            const CalculatorButton(
              label: '0',
              isWide: true,
            ),
            CalculatorButton(
              label: '.',
              onTap: () => _handleTap('.'),
            ),
            CalculatorButton(
              label: '=',
              isPrimary: true,
              onTap: () => _handleTap('='),
            ),
          ],
        ),
      ],
    );
  }
}
