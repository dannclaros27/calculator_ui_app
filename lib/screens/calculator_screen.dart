import 'package:flutter/material.dart';
import '../widgets/calculator_display.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

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
                child: const Center(
                  child: Text(
                    'Keyboard placeholder',
                    style: TextStyle(color: Colors.white54),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
