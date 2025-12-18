import 'package:flutter/material.dart';

class QuantitySelector extends StatelessWidget {
  const QuantitySelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        _Button(Icons.remove),
        SizedBox(width: 12),
        Text('1', style: TextStyle(fontWeight: FontWeight.w600)),
        SizedBox(width: 12),
        _Button(Icons.add),
      ],
    );
  }
}

class _Button extends StatelessWidget {
  final IconData icon;
  const _Button(this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 28,
      height: 28,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Icon(icon, size: 16),
    );
  }
}