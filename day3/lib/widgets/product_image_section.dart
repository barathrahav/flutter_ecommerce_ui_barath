import 'package:flutter/material.dart';

class ProductImageSection extends StatelessWidget {
  const ProductImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // App Bar
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(Icons.arrow_back),
              Row(
                children: [
                  Icon(Icons.favorite_border),
                  SizedBox(width: 16),
                  Icon(Icons.share),
                  SizedBox(width: 16),
                  Icon(Icons.shopping_cart_outlined),
                ],
              ),
            ],
          ),
        ),

        const SizedBox(height: 16),

        // Main Image
        Image.asset(
          'assets/images/iphone.png',
          height: 260,
          fit: BoxFit.contain,
        ),

        const SizedBox(height: 16),

        // Thumbnails
        Row(
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
                'assets/images/iphone.png',
                height: 40,
              ),
            );
          }),
        ),
      ],
    );
  }
}
