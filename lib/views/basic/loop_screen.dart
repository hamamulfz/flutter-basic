import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoopScreen extends StatefulWidget {
  const LoopScreen({Key? key}) : super(key: key);

  @override
  State<LoopScreen> createState() => _LoopScreenState();
}

class _LoopScreenState extends State<LoopScreen> {
  List<String> list = ["Halo", "Nama", "Saya", "Fauzi"];

  String? selected = null;
  generateList() {
    List<Widget> list = [];
    for (var i = 0; i < this.list.length; i++) {
      list.add(Text("$i ${this.list[i]}"));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Column(
              children: list.map((e) => Text(e)).toList(),
            ),
            Column(
              children: generateList()
            ),
          ],
        ),
      ),
    );
  }
}
