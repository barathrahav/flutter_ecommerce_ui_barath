import 'package:flutter/material.dart';

class ColorSelector extends StatelessWidget {
  const ColorSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Color',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 12),

        GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          childAspectRatio: 3.8,
          children: const [
            ColorOptionChip(
              label: 'Desert Titanium',
              gradientColors: [
                Color(0xFFD8CFC5),
                Color(0xFFC1B7AD),
              ],
              isSelected: false,
            ),
            ColorOptionChip(
              label: 'Natural Titanium',
              gradientColors: [
                Color(0xFFE4E4E4),
                Color(0xFFCFCFCF),
              ],
              isSelected: false,
            ),
            ColorOptionChip(
              label: 'White Titanium',
              gradientColors: [
                Color(0xFFFFFFFF),
                Color(0xFFE6E6E6),
              ],
              isSelected: true,
            ),
            ColorOptionChip(
              label: 'Black Titanium',
              gradientColors: [
                Color(0xFF4A4A4A),
                Color(0xFF1E1E1E),
              ],
              isSelected: false,
            ),
          ],
        ),
      ],
    );
  }
}

class ColorOptionChip extends StatelessWidget {
  final String label;
  final List<Color> gradientColors;
  final bool isSelected;

  const ColorOptionChip({
    super.key,
    required this.label,
    required this.gradientColors,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xFFEAF1FF) : Colors.white,
        borderRadius: BorderRadius.circular(22),
        border: Border.all(
          color: isSelected
              ? const Color(0xFF2F6BFF)
              : Colors.grey.shade300,
          width: 1.2,
        ),
      ),
      child: Row(
        children: [
          // Gradient Color Circle
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: gradientColors,
              ),
            ),
          ),
          const SizedBox(width: 10),

          // Color Name
          Expanded(
            child: Text(
              label,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 13,
                fontWeight:
                    isSelected ? FontWeight.w600 : FontWeight.w400,
                color: isSelected
                    ? const Color(0xFF2F6BFF)
                    : Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
