import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Drum Machine';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: Container(
          child: BDLineStatefulWidget(),
        ),
      ),
    );
  }
}

class BDLineStatefulWidget extends StatefulWidget {
  BDLineStatefulWidget({Key key}) : super(key: key);

  @override
  _LineStatefulWidgetState createState() => _LineStatefulWidgetState();
}

// overwriting the fact that there is 16 bytes in the drum machine
const Bits = [1, 2, 3, 4, 5, 6, 7, 8];

class _LineStatefulWidgetState extends State<StatefulWidget> {

  var _bit = Bits[0];

  updateBit(value) {
    setState(() {
      _bit = value;
    });
  }

  Widget build(BuildContext context) {
    return Row(
      children: Bits.map((bit) {
        return Radio(
          value: bit,
          groupValue: _bit,
          onChanged: (value) => updateBit(value),
        );
      }).toList(),
    );
  }
}
