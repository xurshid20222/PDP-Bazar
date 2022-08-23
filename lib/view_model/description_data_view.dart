import 'package:flutter/material.dart';
class DescriptionData extends StatelessWidget {
  String? size;
   DescriptionData({Key? key, this.size, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 40,
      width: 40,
      decoration:  BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: Text(size!, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w500),),
    );
  }
}
