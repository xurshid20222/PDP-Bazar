import 'package:flutter/material.dart';
import 'package:pdp_bazar_home/views/pages/home/home_provider.dart';
import 'package:provider/provider.dart';

import '../models/classes/category_model.dart';
import '../models/classes/product_model.dart';
class PopularCategory extends StatelessWidget {

    final Category category;
   const PopularCategory({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var homeProvider = Provider.of<HomeProvider>(context, listen: false);

    homeProvider.getProducts(category.id);

    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: homeProvider.gridSize,
        itemBuilder: (context, index){
          Product product = homeProvider.products[index];
          return Column(
            children: [
              Container(
                height: 150,
                width: 200,
                padding: const EdgeInsets.all(10),
                // margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  image: DecorationImage(
                    image: NetworkImage(product.images[0]),
                  )
                ),

              ),
              const SizedBox(height: 10,),
              Text('${category.icon} ${category.name}', style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 18, overflow: TextOverflow.ellipsis),),
              const SizedBox(height: 10,),
              Row(
                children: [
                  const Icon(Icons.star_half, size: 25,),
                  const SizedBox(width: 10,),
                  const Text('4.5 |', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 14, overflow: TextOverflow.ellipsis),),
                  const SizedBox(width: 10,),
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
                ],
              ),
              //#price
              Text('\$${product.price}', style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 18, overflow: TextOverflow.ellipsis),),

            ],
          );
        },
      )
    );
  }
}

/*
 Container(
            height: 150,
            width: 200,
            padding: const EdgeInsets.all(10),
            // margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Image.network(image, fit: BoxFit.cover,),
          ),
          const SizedBox(height: 10,),
          Text('${category.icon} ${category.name}', style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 18, overflow: TextOverflow.ellipsis),),
          const SizedBox(height: 10,),
          Row(
            children: [
              const Icon(Icons.star_half, size: 25,),
              const SizedBox(width: 10,),
              const Text('4.5 |', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 14, overflow: TextOverflow.ellipsis),),
              const SizedBox(width: 10,),
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
            ],
          ),
          //#price
          Text('\$${price}', style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 18, overflow: TextOverflow.ellipsis),),
 */
