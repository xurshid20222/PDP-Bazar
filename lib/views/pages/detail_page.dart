
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../view_model/description_data_view.dart';
import '../../view_model/detail_product_color.dart';

class DetailPage extends StatelessWidget {
  static const id = 'detail_page';
  String? image;
  String? name;
   DetailPage({Key? key,  this.image, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          //#image
          SizedBox(
            height: 250,
            width: double.infinity,
            child: Image.network(image!, fit: BoxFit.cover,),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                //#name
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(name!, style: const TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.w500),),
                    IconButton(
                      splashRadius: 25,
                      onPressed: (){},
                      icon: const Icon(CupertinoIcons.heart, size: 25,),
                    ),
                  ],
                ),

                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade300,
                      ),
                      child: const Text('8.374 solid', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 10, overflow: TextOverflow.ellipsis),),

                    ),
                    const SizedBox(width: 10,),
                    const Icon(Icons.star_half, size: 25,),
                    const SizedBox(width: 10,),
                    const Text('4.5 | (5.389 reviews)', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 14, overflow: TextOverflow.ellipsis),),
                    const SizedBox(width: 10,),
                  ],
                ),
               const SizedBox(height: 20,),
               const Divider(
                  height: 1,
                  color: Colors.grey,
                ),
                const SizedBox(height: 20,),
                const Text('Description', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 20, overflow: TextOverflow.ellipsis),),
                const SizedBox(height: 20,),
                const Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300, fontSize: 14, ),),
                const SizedBox(height: 20,),
                Row(
                  children:const [
                     Text('Size', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 20, overflow: TextOverflow.ellipsis),),
                    SizedBox(width: 130,),
                     Text('Color', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 20, overflow: TextOverflow.ellipsis),),
                  ],
                ),
                const SizedBox(height: 20,),
                //#size and #color
                SizedBox(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      //#size
                      DescriptionData(size: '40',),
                      const SizedBox(width: 10,),
                      DescriptionData(size: '41',),
                      const SizedBox(width: 10,),
                      DescriptionData(size: '42',),
                      const SizedBox(width: 30,),

                      //#color
                      ProductColor(color: Colors.blueGrey.shade700,),
                      const SizedBox(width: 10,),
                      ProductColor(color: Colors.green,),
                      const SizedBox(width: 10,),
                      ProductColor(color: Colors.red,),
                      const SizedBox(width: 10,),
                      ProductColor(color: Colors.black,),
                      const SizedBox(width: 10,),
                      ProductColor(color: Colors.purple,),
                      const SizedBox(width: 10,),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                //# quantity
                Row(
                  children: [
                    const Text('Quantity', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 20, overflow: TextOverflow.ellipsis),),
                    const SizedBox(width: 20,),

                    Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Text('-   2   +', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16, overflow: TextOverflow.ellipsis),),


                    )
                  ],
                ),
                const SizedBox(height: 20,),
                const Divider(
                  height: 1,
                  color: Colors.grey,
                ),
                const SizedBox(height: 10,),

                Row(
                  children: [
                    //#Total price
                    Column(
                      children:const [
                         Text('Total price', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 12,),),
                         SizedBox(height: 5,),
                        Text('\$240.00', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 20,),),

                      ],
                    ),
                    const SizedBox(width: 30,),

                    //#add to card
                    ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        shape: const StadiumBorder(),
                        minimumSize: const Size(230, 50)
                      ),
                        child: Row(
                          children: const [
                            Icon(Icons.shopping_bag, color: Colors.white, size: 20,),
                            SizedBox(width: 10,),
                            Text('Add to Cart', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 15,),),

                          ],
                        ),
                    )
                  ],
                )

              ],
            ),
          )
        ],
      ),
    );
  }
}
