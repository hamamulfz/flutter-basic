import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class IfElseScreen extends StatefulWidget {
  const IfElseScreen({Key? key}) : super(key: key);

  @override
  State<IfElseScreen> createState() => _IfElseScreenState();
}

class _IfElseScreenState extends State<IfElseScreen> {
  bool status = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Checkbox(
                value: status,
                onChanged: (val) {
                  status = val!;
                  setState(() {});
                  if (val) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Nilainya TRUE"),
                        duration: Duration(seconds: 2),
                      ),
                    );
                  }
                }),
            Container(
              width: 100,
              height: 100,
              color: status ? Colors.black : Colors.red,
              child: Center(
                child: Text(
                  "Active",
                  style: TextStyle(
                    color: !status ? Colors.black : Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
