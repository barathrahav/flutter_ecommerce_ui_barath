import 'package:flutter/material.dart';

class ProductInfoSection extends StatelessWidget {
  const ProductInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'iPhone 16 Pro',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            '\$1,299',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2F6BFF),
            ),
          ),
          SizedBox(height: 8),
          Text(
            '⭐ 4.8 (2,345 reviews)',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
