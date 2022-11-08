import 'package:basic/views/splash_wa_screen.dart';
import 'package:flutter/material.dart';

class NavigationPopScreen extends StatefulWidget {
  const NavigationPopScreen({Key? key}) : super(key: key);

  @override
  State<NavigationPopScreen> createState() => _NavigationPopScreenState();
}

class _NavigationPopScreenState extends State<NavigationPopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Kembali"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SplashWaScreen()),
                    (context) => false);
              },
              child: const Text("Tutup Semua dan buka splash WA"),
            ),
          ],
        ),
      ),
    );
  }
}
