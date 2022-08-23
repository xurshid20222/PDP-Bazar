import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pdp_bazar_home/views/pages/detail_page.dart';
import 'package:pdp_bazar_home/views/pages/popular_page.dart';
import 'package:provider/provider.dart';
import '../../../view_model/advertising_view.dart';
import '../../../view_model/company_logo_view.dart';
import '../../../view_model/popular_product_category.dart';
import '../../../view_model/selected_company_product_category.dart';
import '../../../view_model/unselected_company_product_category.dart';
import 'home_provider.dart';

class HomePage extends StatelessWidget {
  static const id = 'home_page';
  const HomePage({Key? key}) : super(key: key);


  void _openPopularPage(BuildContext context){
    Navigator.pushNamed(context, PopularPage.id);
  }

  void _openDetailPage(BuildContext context, String image, String name){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailPage(image: image, name: name,)));
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => HomeProvider(),
      builder: (context, widget) {

        var homeProvider = Provider.of<HomeProvider>(context, listen: false);

        // get all data
        homeProvider.getAllCategories();


        return Scaffold(
          backgroundColor: Colors.grey.shade200,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: Container(
              height: 50,
              width: 50,
              margin: const EdgeInsets.only(left: 10),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.orangeAccent,
              ),
            ),
            title: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Good Morning', style: TextStyle(color: Colors.grey, fontSize: 15),),
                Text('Andrew Ainsley', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),),
              ],
            ),
            actions: [
              IconButton(onPressed: (){},
                icon: const Icon(Icons.notifications_none, color: Colors.black, size: 26,),),
              IconButton(onPressed: (){},
                  icon: const Icon(CupertinoIcons.heart, color: Colors.black, size: 26,),),
              const SizedBox(width: 20,)
            ],
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(70),
              child: Container(
                height: 50,
                width: double.infinity,
                margin:const EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade300,
                ),
               child: const TextField(
                 decoration: InputDecoration(
                   prefixIcon:  Icon(CupertinoIcons.search, color: Colors.grey,),
                   hintText: 'Search',
                   border: InputBorder.none,
                   hintStyle: TextStyle(color: Colors.grey),
                   suffixIcon: Icon(CupertinoIcons.settings_solid, color: Colors.grey,),
                 ),
               ),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              margin:const  EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children:  [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text('Special Offers',style: TextStyle(color: Colors.black, fontSize: 18),),
                      const SizedBox(width: 100,),
                      TextButton(onPressed: (){},
                        child:const Text('See All',style: TextStyle(color: Colors.black, fontSize: 18),),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 180,
                    //#Advertising - reklama
                    child: PageView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        Advertising(),
                        Advertising(),
                        Advertising(),
                        Advertising(),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      companyLogo(image: 'https://www.pngpix.com/wp-content/uploads/2016/07/PNGPIX-COM-Apple-Logo-PNG-Transparent.png.png', text: 'Apple'),
                      companyLogo(image: 'https://www.freepngimg.com/thumb/adidas/58185-logo-originals-adidas-nike-free-download-png-hq.png', text: 'Adidas'),
                      companyLogo(image: 'https://www.freepngimg.com/thumb/adidas/58185-logo-originals-adidas-nike-free-download-png-hq.png', text: 'Adidas'),
                      companyLogo(image: 'https://www.freepngimg.com/thumb/adidas/58185-logo-originals-adidas-nike-free-download-png-hq.png', text: 'Adidas'),
                    ],
                  ),
                  const SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      companyLogo(image: 'https://www.freepngimg.com/thumb/adidas/58185-logo-originals-adidas-nike-free-download-png-hq.png', text: 'Adidas'),
                      companyLogo(image: 'https://www.freepngimg.com/thumb/adidas/58185-logo-originals-adidas-nike-free-download-png-hq.png', text: 'Adidas'),
                      companyLogo(image: 'https://pngimg.com/uploads/tesla_logo/tesla_logo_PNG7.png', text: 'Tesla'),
                      companyLogo(image: 'https://pngimg.com/uploads/nike/nike_PNG2.png', text: 'Nike'),
                    ],
                  ),
                  const SizedBox(height: 15,),

                  //#popular
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      const Text('Most Popular', style: TextStyle(color: Colors.black, fontSize: 19, fontWeight: FontWeight.w500),),
                      TextButton(onPressed: () {
                        _openPopularPage(context);
                      },
                          child: const Text('See All', style: TextStyle(color: Colors.black, fontSize: 19, fontWeight: FontWeight.w500),),),
                    ],
                  ),

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
                     SizedBox(
                       height:520,
                      child: GestureDetector(
                        onTap: (){
                          _openDetailPage(context, 'https://kelmeshop.ru/upload/iblock/9e4/9e40483b0fde9c3e0085cec240a38b81.webp', 'K-Snack');
                        },
                        child: ListView.builder(
                          padding: const EdgeInsets.all(15),
                          itemCount: homeProvider.categories.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index){
                            return PopularCategory(category: homeProvider.categories[index],);
                          },
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}