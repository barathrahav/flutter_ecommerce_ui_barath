import 'package:flutter/material.dart';

class ThumbnailSelector extends StatelessWidget {
  const ThumbnailSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(4, (index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 6),
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            border: Border.all(
              color: index == 2
                  ? const Color(0xFF2F6BFF)
                  : Colors.grey.shade300,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Image.asset(
            'assets/images/mobile.png',
            height: 40,
          ),
        );
      }),
    );
  }
}