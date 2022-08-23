 import 'package:flutter/material.dart';
  class ProductColor extends StatelessWidget {
  Color? color;
   ProductColor({Key? key, this.color}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
      );
    }
  }
