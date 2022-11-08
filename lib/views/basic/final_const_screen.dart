import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FinalConstScreen extends StatefulWidget {
  const FinalConstScreen({Key? key}) : super(key: key);

  @override
  State<FinalConstScreen> createState() => _DocCommentScreenState();
}

class _DocCommentScreenState extends State<FinalConstScreen> {
  // sebuah variabel String untuk dicetak
  final String helloWorld = "Hello World!";
  static const String name = "Fauzi!";
  String helloWorld2 = "Hello World!";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(helloWorld),
              Text(helloWorld2),
              const Text(name),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print(helloWorld);
          },
        ));
  }
}
