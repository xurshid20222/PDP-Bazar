

import 'package:flutter/material.dart';

class UnSelectedCompanyProduct extends StatelessWidget {
  String text;
  UnSelectedCompanyProduct({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(left: 12,),
      height: 40,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: (
        Border.all(color: Colors.black, width: 2)
        ),
        color: Colors.white
      ),
      child: Text(text, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w600),),
    );
  }
}
