
import 'package:flutter/material.dart';

class SelectedCompanyProduct extends StatelessWidget {
  String text;
   SelectedCompanyProduct({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(left: 12,),
      height: 40,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.black,
      ),
      child: Text(text, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
    );
  }
}
