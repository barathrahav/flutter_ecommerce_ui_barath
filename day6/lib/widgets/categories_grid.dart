import 'package:flutter/material.dart';

class CategoriesGrid extends StatelessWidget {
  const CategoriesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      {'label': 'Mobile', 'image': 'assets/images/mobile.png'},
      {'label': 'Headphone', 'image': 'assets/images/headphone.png'},
      {'label': 'Tablets', 'image': 'assets/images/tablet.png'},
      {'label': 'Laptop', 'image': 'assets/images/laptop.png'},
      {'label': 'Speakers', 'image': 'assets/images/speakers.png'},
      {'label': 'More'}, 
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: categories.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 0.85,
      ),
      itemBuilder: (context, index) {
        final item = categories[index];

        return Column(
          children: [
            Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: item.containsKey('image')
                    ? Image.asset(
                        item['image']!,
                        width: 45,
                        height: 45,
                        fit: BoxFit.contain,
                      )
                    : const Icon(
                        Icons.devices_other,
                        size: 28,
                        color: Colors.black87,
                      ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              item['label']!,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        );
      },
    );
  }
}
