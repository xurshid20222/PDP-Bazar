
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



  Widget companyLogo({required String image,required String text}) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
           padding: const EdgeInsets.all(13),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey.shade500,
          ),
          child:  Image.network(image),
        ),
        const SizedBox(height: 15,),
        Text(text, style: const TextStyle(color: Colors.black),),

      ],
    );
  }

