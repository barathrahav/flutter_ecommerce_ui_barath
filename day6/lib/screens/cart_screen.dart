import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6FB),
      body: SafeArea(
        child: Column(
          children: [
            const CartHeader(),

            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: const [
                      SizedBox(height: 8),

                      CartItemCard(
                        image: 'assets/images/mobile.png',
                        title: 'iPhone 16 Pro Max',
                        subtitle: 'Color: Natural Titanium',
                        price: '\$1399.99',
                      ),

                      SizedBox(height: 16),

                      CartItemCard(
                        image: 'assets/images/watch.png',
                        title: 'Smartwatch Ultra',
                        subtitle: 'Color: Black',
                        price: '\$99.99',
                      ),

                      SizedBox(height: 20),
                      PromoCodeBox(),
                      SizedBox(height: 20),
                      PriceSummary(),
                      SizedBox(height: 100), // space for checkout button
                    ],
                  ),
                ),
              ),
            ),

            const CheckoutButton(),
          ],
        ),
      ),
    );
  }
}

class CartHeader extends StatelessWidget {
  const CartHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(Icons.arrow_back),
          ),
          const Spacer(),
          const Text(
            'Cart',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          const Spacer(),
          const Icon(Icons.delete_outline),
        ],
      ),
    );
  }
}

class CartItemCard extends StatelessWidget {
  final String image, title, subtitle, price;

  const CartItemCard({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        gradient: LinearGradient(
          colors: [
            Colors.white,
            const Color(0xFFF6F8FF),
          ],
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Product image
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              image,
              height: 72,
              width: 72,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(width: 12),

          // Product info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 14)),
                const SizedBox(height: 2),
                const Text('Apple',
                    style: TextStyle(
                        color: Color(0xFF2F6BFF), fontSize: 12)),
                const SizedBox(height: 2),
                Text(subtitle,
                    style:
                        const TextStyle(color: Colors.grey, fontSize: 12)),
                const SizedBox(height: 6),
                Text(price,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 14)),
                const SizedBox(height: 6),
                const Text('Edit',
                    style: TextStyle(
                        color: Color(0xFF2F6BFF), fontSize: 12)),
              ],
            ),
          ),

          // Quantity + delete
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              QuantitySelector(),
              const SizedBox(height: 14),
              const Icon(Icons.delete_outline, color: Colors.grey),
            ],
          )
        ],
      ),
    );
  }
}

class QuantitySelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _circleBtn(Icons.remove, false),
        const SizedBox(width: 8),
        const Text('1', style: TextStyle(fontWeight: FontWeight.w500)),
        const SizedBox(width: 8),
        _circleBtn(Icons.add, true),
      ],
    );
  }

  Widget _circleBtn(IconData icon, bool active) {
    return Container(
      width: 28,
      height: 28,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: active ? const Color(0xFF2F6BFF) : Colors.grey.shade300,
        ),
      ),
      child: Icon(
        icon,
        size: 16,
        color: active ? const Color(0xFF2F6BFF) : Colors.black,
      ),
    );
  }
}

class PromoCodeBox extends StatelessWidget {
  const PromoCodeBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: const [
          Icon(Icons.confirmation_number_outlined, color: Colors.grey),
          SizedBox(width: 10),
          Text('Enter Promo Code', style: TextStyle(color: Colors.grey)),
          Spacer(),
          Icon(Icons.chevron_right),
        ],
      ),
    );
  }
}

class PriceSummary extends StatelessWidget {
  const PriceSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        _Row('Sub Total', '1499.98'),
        _Row('Shipping & Tax', '\$15'),
        _Row('Total', '\$1514.98', bold: true),
      ],
    );
  }
}

class _Row extends StatelessWidget {
  final String label, value;
  final bool bold;

  const _Row(this.label, this.value, {this.bold = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Text(label,
              style: TextStyle(
                  color: bold ? Colors.black : Colors.grey,
                  fontWeight: bold ? FontWeight.bold : FontWeight.normal)),
          const Spacer(),
          Text(value,
              style: TextStyle(
                  fontWeight: bold ? FontWeight.bold : FontWeight.normal)),
        ],
      ),
    );
  }
}

class CheckoutButton extends StatelessWidget {
  const CheckoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
      child: SizedBox(
        width: double.infinity,
        height: 52,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF2F6BFF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          onPressed: () {},
          child: const Text(
            'Checkout',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
           ),
        ),
      ),
    );
  }
}
