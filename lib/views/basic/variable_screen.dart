import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class VariableScreen extends StatefulWidget {
  const VariableScreen({Key? key}) : super(key: key);

  @override
  State<VariableScreen> createState() => _VariableScreenState();
}

class _VariableScreenState extends State<VariableScreen> {
  String myString = "Halo Dunia";
  int myInt = 1;
  int myInt2 = 1;
  double myDouble = 2.0;
  bool myBool = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(myString),
            Row(
              children: [
                Expanded(
                  flex: myInt,
                  child: Container(
                    height: 10,
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  flex: myDouble.toInt(),
                  child: Container(
                    height: 10,
                    color: Colors.yellow,
                  ),
                ),
              ],
            ),
            Slider(
                value: myDouble,
                min: 1,
                max: 10,
                onChanged: (val) {
                  myDouble = val;
                  setState(() {});
                }),
            Checkbox(
                value: myBool,
                onChanged: (val) {
                  myBool = !myBool;
                  setState(() {});
                 
                }),
          ],
        ),
      ),
    );
  }
}
