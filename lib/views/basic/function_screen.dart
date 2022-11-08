import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FunctionScreen extends StatefulWidget {
  const FunctionScreen({Key? key}) : super(key: key);

  @override
  State<FunctionScreen> createState() => _FunctionScreenState();
}

class _FunctionScreenState extends State<FunctionScreen> {
  List<String> list = ["Halo", "Nama", "Saya", "Fauzi"];

  String? selected = null;
  generateList() {
    List<Widget> listLocal = [];
    for (var i = 0; i < list.length; i++) {
      listLocal.add(Text("$i ${list[i]}"));
    }
    return listLocal;
  }

  // alt shift f
  // ctrl + .
  // ctrl + spasi

  // test(){
  //   var a =generateList();
  //   (a as List).
  // }

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: [
          Column(
            children: list.map((e) => Text(e)).toList(),
          ),
          Column(children: generateList()),
          Text(_counter.toString())
        ],
      ),
    );
  }
}
