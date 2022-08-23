import 'package:flutter/material.dart';
import 'package:pdp_bazar_home/views/pages/detail_page.dart';
import 'package:pdp_bazar_home/views/pages/home/home_page.dart';
import 'package:pdp_bazar_home/views/pages/main/main_page.dart';
import 'package:pdp_bazar_home/views/pages/popular_page.dart';

void main() {
  runApp(const PDPBazar());
}

class PDPBazar extends StatelessWidget {
  const PDPBazar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme:const AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.black
          )
        )
      ),
      home: const MainPage(),
      routes: {
        HomePage.id: (context) => const HomePage(),
        PopularPage.id: (context) => const PopularPage(),
        DetailPage.id: (context) =>  DetailPage(),
      },
    );
  }
}

