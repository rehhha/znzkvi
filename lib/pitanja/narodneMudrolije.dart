import 'package:flutter/material.dart';
import 'package:znzkvi/home.dart';

class NarodneMudrolije extends StatefulWidget {
  final String? ime;
  const NarodneMudrolije({Key? key, required this.ime}) : super(key: key);

  @override
  State<NarodneMudrolije> createState() => _NarodneMudrolijeState();
}

class _NarodneMudrolijeState extends State<NarodneMudrolije> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text(widget.ime!),
      ),
    );
  }
}
