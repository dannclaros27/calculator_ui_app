import 'package:flutter/material.dart';
import '../widgets/calculator_display.dart';
import '../widgets/calculator_keyboard.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String _displayValue = '0';
  String _operation = '';

  void _onButtonPressed(String value) {
    setState(() {
      // UI básica: si es número, lo concatenamos
      final isDigit = RegExp(r'^[0-9]$').hasMatch(value);
      if (isDigit) {
        if (_displayValue == '0') {
          _displayValue = value;
        } else {
          _displayValue += value;
        }
      } else {
        // Por ahora solo mostramos la operación presionada
        _operation = value;
      }
    });
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
            Expanded(
              flex: 2,
              child: CalculatorDisplay(
                value: _displayValue,
                operation: _operation,
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
