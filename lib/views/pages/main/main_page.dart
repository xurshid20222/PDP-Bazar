import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pdp_bazar_home/views/pages/home/home_page.dart';
import 'package:pdp_bazar_home/views/pages/main/main_provider.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
       create: (context) => MainProvider(),
      builder: (context, widget) {

         var mainProvider = Provider.of<MainProvider>(context, listen: false);

        return Scaffold(
          body: PageView(
            onPageChanged: mainProvider.onPageChanged,
            controller: mainProvider.pageController,
            children:  [
              const HomePage(),
              Container(color: Colors.red,),
              Container(color: Colors.blueAccent,),
              Container(color: Colors.lightGreen,),
              Container(color: Colors.black,),
              Container(color: Colors.grey,),
            ],
          ),
          bottomNavigationBar: Consumer<MainProvider>(
            builder: (context, main, child) {
              return BottomNavigationBar(
                currentIndex: main.currentPage,
                onTap: main.onTapNavigatorIcon,
                unselectedItemColor: Colors.grey,
                selectedItemColor: Colors.black,
                selectedLabelStyle: const TextStyle(color: Colors.black),
                unselectedLabelStyle: const TextStyle(color: Colors.grey),
                showSelectedLabels: true,
                showUnselectedLabels: true,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.home),
                    label: "Home",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_bag),
                    label: "Cart",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.cart),
                    label: "Orders",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.bag_badge_plus),
                    label: "Wallet",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.person),
                    label: "Profile",
                  ),
                ],
              );
            }
          ),
        );
      }
    );
  }
}