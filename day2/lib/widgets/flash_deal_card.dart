import 'package:flutter/material.dart';

class FlashDealCard extends StatelessWidget {
  const FlashDealCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 90,
            decoration: BoxDecoration(
              color: const Color(0xFFF1F2F6),
              borderRadius: BorderRadius.circular(14),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Apple iPhone 16',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 6),
          const Text(
            '\$1,299',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFF2F6BFF),
            ),
          ),
          const Spacer(),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 6),
            decoration: BoxDecoration(
              color: const Color(0xFF2F6BFF),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Text(
              'Buy Now',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}