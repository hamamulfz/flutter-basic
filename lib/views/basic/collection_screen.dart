import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CollectionScreen extends StatefulWidget {
  const CollectionScreen({Key? key}) : super(key: key);

  @override
  State<CollectionScreen> createState() => _CollectionScreenState();
}

class _CollectionScreenState extends State<CollectionScreen> {
  // List<String> list = ["Halo", "Nama", "Saya", "Fauzi"];
  Map<String, dynamic> map = prov;
  // map = null;
  String? selected = null;

  List<Widget>? list = [
    const Text(
      "Halo",
    ),
    const Text("Nama"),
    const Text("Saya"),
    const Text("Fauzi"),
  ];
  // late String name;

  // ! : String? => String
  // ?? : String? => String
  // myFunc()
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          // ElevatedButton(onPressed: (){} , child: child)
          // Text(name ?? "default"),
          Container(
            child: (list ?? []).isEmpty  ? Text("OK") : list![0],
          ),
          Column(
            children: list!,
          ),
          DropdownButton(
              items: map['data'].map(
                (key, value) => DropdownMenuItem<String>(
                  child: Text(value["propinsi"]),
                  value: value["kode"],
                ),
              ),
              value: selected,
              onChanged: (String? val) {
                selected = val;
                setState(() {});
              })
        ],
      ),
    );
  }
}

final prov = {
  "status": 1,
  "message": "ok",
  "data": [
    {"kode_prop": "010000", "propinsi": "Prov. D.K.I. Jakarta"},
    {"kode_prop": "020000", "propinsi": "Prov. Jawa Barat"},
    {"kode_prop": "030000", "propinsi": "Prov. Jawa Tengah"},
    {"kode_prop": "050000", "propinsi": "Prov. Jawa Timur"},
    {"kode_prop": "060000", "propinsi": "Prov. Aceh"},
    {"kode_prop": "070000", "propinsi": "Prov. Sumatera Utara"},
    {"kode_prop": "080000", "propinsi": "Prov. Sumatera Barat"},
    {"kode_prop": "090000", "propinsi": "Prov. Riau"},
    {"kode_prop": "100000", "propinsi": "Prov. Jambi"},
    {"kode_prop": "110000", "propinsi": "Prov. Sumatera Selatan"},
    {"kode_prop": "120000", "propinsi": "Prov. Lampung"},
    {"kode_prop": "130000", "propinsi": "Prov. Kalimantan Barat"},
    {"kode_prop": "140000", "propinsi": "Prov. Kalimantan Tengah"},
    {"kode_prop": "150000", "propinsi": "Prov. Kalimantan Selatan"},
    {"kode_prop": "160000", "propinsi": "Prov. Kalimantan Timur"},
    {"kode_prop": "170000", "propinsi": "Prov. Sulawesi Utara"},
    {"kode_prop": "180000", "propinsi": "Prov. Sulawesi Tengah"},
    {"kode_prop": "190000", "propinsi": "Prov. Sulawesi Selatan"},
    {"kode_prop": "200000", "propinsi": "Prov. Sulawesi Tenggara"},
    {"kode_prop": "210000", "propinsi": "Prov. Maluku"},
    {"kode_prop": "220000", "propinsi": "Prov. Bali"},
    {"kode_prop": "230000", "propinsi": "Prov. Nusa Tenggara Barat"},
    {"kode_prop": "240000", "propinsi": "Prov. Nusa Tenggara Timur"},
    {"kode_prop": "250000", "propinsi": "Prov. Papua"},
    {"kode_prop": "260000", "propinsi": "Prov. Bengkulu"},
    {"kode_prop": "270000", "propinsi": "Prov. Maluku Utara"},
    {"kode_prop": "280000", "propinsi": "Prov. Banten"},
    {"kode_prop": "290000", "propinsi": "Prov. Bangka Belitung"},
    {"kode_prop": "300000", "propinsi": "Prov. Gorontalo"},
    {"kode_prop": "320000", "propinsi": "Prov. Papua Barat"},
    {"kode_prop": "340000", "propinsi": "Prov. Kalimantan Utara"},
    {"kode_prop": "040000", "propinsi": "Prov. D.I. Yogyakarta"},
    {"kode_prop": "310000", "propinsi": "Prov. Kepulauan Riau"},
    {"kode_prop": "330000", "propinsi": "Prov. Sulawesi Barat"}
  ]
};
