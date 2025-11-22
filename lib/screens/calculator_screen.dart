import 'package:flutter/material.dart';
import '../widgets/calculator_display.dart';
import '../widgets/calculator_keyboard.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  void _onButtonPressed(String value) {
    // Por ahora solo imprimimos. Luego podrías hacer la lógica.
    debugPrint('Button pressed: $value');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        elevation: 0,
        title: const Text(
          'Calculator',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              flex: 2,
              child: CalculatorDisplay(
                value: '0',
                operation: '',
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey.shade800,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(24),
                  ),
                ),
                child: CalculatorKeyboard(
                  onButtonPressed: _onButtonPressed,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
