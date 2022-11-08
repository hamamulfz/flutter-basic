import 'package:basic/views/navigation_pop_screen.dart';
import 'package:flutter/material.dart';

class NavigationScren extends StatefulWidget {
  const NavigationScren({Key? key}) : super(key: key);

  @override
  State<NavigationScren> createState() => _NavigationScrenState();
}

class _NavigationScrenState extends State<NavigationScren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Navigasi"),
        ),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NavigationPopScreen(),
                  ),
                );
              },
              child:const  Text("Buka Halaman Baru"),
            ),
          ],
        ));
  }
}
