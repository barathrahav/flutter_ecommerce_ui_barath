import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(EcomDay0App());

class EcomDay0App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Day0 - Ecom UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF4F6FB),
        textTheme: GoogleFonts.interTextTheme(),
      ),
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Column(
              children: [
                TopSearchBar(),
                SizedBox(height: 12),
                BannerCardPlaceholder(),
                SizedBox(height: 12),
                Expanded(
                  child: Center(
                    child: Text(
                      'Day0: Project setup complete.\nDay1: Start header & banner',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline), label: 'Chat'),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: 'Wishlist'),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}

class TopSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(Icons.menu, size: 22),
      SizedBox(width: 12),
      Expanded(
        child: Container(
          height: 46,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0,1))],
          ),
          child: Row(
            children: [
              SizedBox(width: 12),
              Icon(Icons.search, color: Colors.grey),
              SizedBox(width: 8),
              Expanded(child: Text('Search', style: TextStyle(color: Colors.grey))),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.camera_alt, color: Colors.grey),
              )
            ],
          ),
        ),
      ),
    ]);
  }
}

class BannerCardPlaceholder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Color(0xFF3A6BFF), Color(0xFF9FA8FF)]),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: EdgeInsets.all(14),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('iPhone 16 Pro', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Text('Extraordinary Visual & Exceptional Power', style: TextStyle(color: Colors.white70, fontSize: 12)),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                    child: Text('Shop Now', style: TextStyle(color: Color(0xFF2F6BFF), fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ),
            SizedBox(width: 8),
            // placeholder circle to mimic phone image
            Container(width: 92, height: 120, decoration: BoxDecoration(color: Colors.white24, borderRadius: BorderRadius.circular(12))),
          ],
        ),
      ),
    );
  }
}
