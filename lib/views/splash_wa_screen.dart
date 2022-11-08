import 'package:basic/main.dart';
import 'package:flutter/material.dart';

class SplashWaScreen extends StatefulWidget {
  const SplashWaScreen({Key? key}) : super(key: key);

  @override
  State<SplashWaScreen> createState() => _SplashWaScreenState();
}

class _SplashWaScreenState extends State<SplashWaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const Spacer(),
        GestureDetector(
          onLongPress: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: ((context) => const MyApp()),
              ),
            );
          },
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((context) => const MyApp()),
              ),
            );
          },
          child: Image.network(
            "https://www.tanjunglesung.com/wp-content/uploads/2018/12/logo-wa-whatsapp.png",
            width: 200,
          ),
        ),
        const Spacer(),
        const Text(
          "from",
          style: TextStyle(
            letterSpacing: 2,
            color: Colors.grey,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width * 0.1,
        ),
        const Text(
          "META",
          style: TextStyle(
            letterSpacing: 2,
            fontSize: 15,
            color: Colors.green,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width * 0.1,
        )
      ],
    ));
  }
}
