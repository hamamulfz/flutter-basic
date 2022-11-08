import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DocCommentScreen extends StatefulWidget {
  const DocCommentScreen({Key? key}) : super(key: key);

  @override
  State<DocCommentScreen> createState() => _DocCommentScreenState();
}

class _DocCommentScreenState extends State<DocCommentScreen> {
  // sebuah variabel String untuk dicetak
  String helloWorld = "Hello World!";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print(helloWorld);
          },
        ));
  }
}
