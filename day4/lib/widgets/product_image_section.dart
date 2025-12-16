import 'package:flutter/material.dart';

class ProductImageSection extends StatelessWidget {
  const ProductImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 360,
          alignment: Alignment.center,
          child: Image.asset(
            'assets/images/mobile.png',
            height: 260,
            fit: BoxFit.contain,
          ),
        ),

        // Back button
        Positioned(
          top: 16,
          left: 16,
          child: _icon(
            Icons.arrow_back,
            () => Navigator.pop(context),
          ),
        ),

        // Right icons
        Positioned(
          top: 16,
          right: 16,
          child: Row(
            children: [
              _icon(Icons.favorite_border, () {}),
              const SizedBox(width: 12),
              _icon(Icons.share, () {}),
              const SizedBox(width: 12),
              _icon(Icons.shopping_cart_outlined, () {}),
            ],
          ),
        ),
      ],
    );
  }

  Widget _icon(IconData icon, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 36,
        height: 36,
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: Icon(icon, size: 18),
      ),
    );
  }
}
