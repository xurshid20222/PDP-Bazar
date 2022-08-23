
import 'package:flutter/material.dart';

class Advertising extends StatelessWidget {
  const Advertising({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: double.infinity,
      margin: const EdgeInsets.only(top: 15, bottom: 15, left: 5),
      padding: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: const Color.fromRGBO(205,3,30,1),
      ),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              const Text('25%', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700),),
              const SizedBox(height: 10,),
              const Text('Today\'s Special!', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),),
              const SizedBox(height: 10,),
               Text('Get discount for every\norder. only valid for today', style: TextStyle(color: Colors.white.withOpacity(0.9), fontSize: 16,),),

            ],
          ),
          Expanded(
              child: Image.network('https://factcity.com/wp-content/uploads/2020/04/interesting-facts-about-nike.jpg')),
        ],
      ),
    );
  }
}
