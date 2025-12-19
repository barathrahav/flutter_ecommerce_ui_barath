import 'package:flutter/material.dart';

class QuantitySelector extends StatelessWidget {
  const QuantitySelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _circleBtn(Icons.remove, false),
        const SizedBox(width: 8),
        const Text(
          '1',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 13,
          ),
        ),
        const SizedBox(width: 8),
        _circleBtn(Icons.add, true),
      ],
    );
  }

  Widget _circleBtn(IconData icon, bool active) {
    return Container(
      width: 26,
      height: 26,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: active ? const Color(0xFF2F6BFF) : Colors.grey.shade300,
        ),
      ),
      child: Icon(
        icon,
        size: 14,
        color: active ? const Color(0xFF2F6BFF) : Colors.grey,
      ),
    );
  }
}
