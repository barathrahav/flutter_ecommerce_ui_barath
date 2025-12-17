import 'package:flutter/material.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        'The iPhone 16 Pro delivers exceptional performance, stunning visuals, '
        'and advanced camera capabilities. Designed for power users.',
        style: TextStyle(color: Colors.grey, height: 1.4),
      ),
    );
  }
}
