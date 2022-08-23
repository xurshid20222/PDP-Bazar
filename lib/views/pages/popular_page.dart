
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../view_model/popular_product_category.dart';
import '../../view_model/selected_company_product_category.dart';
import '../../view_model/unselected_company_product_category.dart';

class PopularPage extends StatelessWidget {
  static const id = 'popular';
  const PopularPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Most Popular', style: TextStyle(color: Colors.black, fontSize: 19, fontWeight: FontWeight.w500),),
         actions: [
           IconButton(onPressed: (){},
               icon: const Icon(CupertinoIcons.search, color: Colors.black,)
           ),
           const SizedBox(width: 10,),
         ],
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(height: 20,),
            //#Company Product Category
            SizedBox(
              height: 45,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SelectedCompanyProduct(text: 'All'),
                  UnSelectedCompanyProduct(text: 'Nike'),
                  UnSelectedCompanyProduct(text: 'Adidas'),
                  UnSelectedCompanyProduct(text: 'Puma'),
                  UnSelectedCompanyProduct(text: 'Reebok'),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            //#Product Category
            Expanded(
              child: GridView(
                physics: const BouncingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 15,
                  childAspectRatio: 1.3/2,
                ),
                children: [

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
