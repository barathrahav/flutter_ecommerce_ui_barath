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
        childAspectRatio: 0.9,
      ),
      itemBuilder: (context, index) {
        final item = categories[index];

        return Container(
          padding: const EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon / Image
              item.containsKey('image')
                  ? Image.asset(
                      item['image']!,
                      width: 50,
                      height: 50,
                      fit: BoxFit.contain,
                    )
                  : const Icon(
                      Icons.devices_other,
                      size: 40,
                      color: Colors.black87,
                    ),

              const SizedBox(height: 8),

              // Label
              Text(
                item['label']!,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
