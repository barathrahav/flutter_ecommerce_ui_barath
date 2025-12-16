import 'package:flutter/material.dart';
import '../screens/product_detail_screen.dart';
import '../widgets/phone_frame.dart';

class FlashDealCard extends StatelessWidget {
  final String title;
  final String price;
  final String image;

  const FlashDealCard({
    super.key,
    required this.title,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
          Navigator.push(
            context,
              MaterialPageRoute(
                builder: (_) => PhoneFrame(
                  child: const ProductDetailScreen(),
                ),
              ),
          );
        },
      child: Container(
        width: 150,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Center(
                child: Image.asset(
                  image,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 4),
            Text(
              price,
              style: const TextStyle(
                color: Color(0xFF2F6BFF),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
