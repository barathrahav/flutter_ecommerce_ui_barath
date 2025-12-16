import 'package:flutter/material.dart';

class BannerCard extends StatelessWidget {
  const BannerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      width: double.infinity,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Background Card
          Container(
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF4E6EF2),
                  Color(0xFF8A9AF5),
                ],
              ),
            ),
            padding: const EdgeInsets.fromLTRB(20, 20, 120, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'iPhone 16 Pro',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 6),
                const Text(
                  'Extraordinary Visual\n& Exceptional Power',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 12,
                    height: 1.3,
                  ),
                ),
                const Spacer(),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(
                    'Shop Now',
                    style: TextStyle(
                      color: Color(0xFF2F6BFF),
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // iPhone Image (OVERFLOWING)
          Positioned(
            right: 5,
            bottom: 0,
            child: Image.asset(
              'assets/images/iphone.png',
              height: 160,
              fit: BoxFit.contain,
            ),
          ),

          // Carousel dots
          Positioned(
            left: 150,
            bottom: 6,
            child: Row(
              children: List.generate(6, (index) {
                return Container(
                  margin: const EdgeInsets.only(right: 6),
                  width: index == 0 ? 16 : 6,
                  height: 6,
                  decoration: BoxDecoration(
                    color:
                        index == 0 ? Colors.white : Colors.white54,
                    borderRadius: BorderRadius.circular(10),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
