import 'package:flutter/material.dart';

class PhoneFrame extends StatelessWidget {
  final Widget child;

  const PhoneFrame({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // iPhone width
        const double phoneWidth = 390;

        return Center(
          child: Container(
            width: constraints.maxWidth > phoneWidth
                ? phoneWidth
                : constraints.maxWidth,
            height: constraints.maxHeight,
            decoration: BoxDecoration(
              color: const Color(0xFFF4F6FB),
              borderRadius: BorderRadius.circular(28),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.15),
                  blurRadius: 30,
                  offset: const Offset(0, 20),
                ),
              ],
            ),
            clipBehavior: Clip.antiAlias,
            child: child,
          ),
        );
      },
    );
  }
}
