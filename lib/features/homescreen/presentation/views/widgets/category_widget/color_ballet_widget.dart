import 'package:flutter/material.dart';

class ColorsballetWidget extends StatelessWidget {
  final String color;

  const ColorsballetWidget({super.key, required this.color, });

  @override
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: Color(int.parse(color),) ,
          // color: color.hexValue != null
          //     ? Color(int.parse(color.hexValue!, radix: 16))
          //     : Colors.blue,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}