import 'package:basic/views/basic/doc_comment_screen.dart';
import 'package:basic/views/basic/final_const_screen.dart';
import 'package:basic/views/basic/function_screen.dart';
import 'package:basic/views/basic/ifelse_screen.dart';
import 'package:basic/views/basic/loop_screen.dart';
import 'package:basic/views/basic/variable_screen.dart';
import 'package:flutter/material.dart';

class BasicDartFlutter extends StatefulWidget {
  const BasicDartFlutter({Key? key}) : super(key: key);

  @override
  State<BasicDartFlutter> createState() => _BasicDartFlutterState();
}

class _BasicDartFlutterState extends State<BasicDartFlutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Wrap(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: ((context) => DocCommentScreen()),
                  ),
                );
              },
              child: Text("Komentar Print"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: ((context) => FinalConstScreen()),
                  ),
                );
              },
              child: Text("Final Const"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: ((context) => VariableScreen()),
                  ),
                );
              },
              child: Text("Variabel"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: ((context) => FunctionScreen()),
                  ),
                );
              },
              child: Text("Function"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: ((context) => IfElseScreen()),
                  ),
                );
              },
              child: Text("If Else"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: ((context) => LoopScreen()),
                  ),
                );
              },
              child: Text("Loop"),
            ),
          ],
        ),
      ),
    );
  }
}
