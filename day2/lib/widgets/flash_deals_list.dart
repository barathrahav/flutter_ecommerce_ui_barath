import 'package:flutter/material.dart';

class FlashDealsList extends StatelessWidget {
  const FlashDealsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        separatorBuilder: (_, __) => const SizedBox(width: 16),
        itemBuilder: (context, index) {
          return const FlashDealCard();
        },
      ),
    );
  }
}