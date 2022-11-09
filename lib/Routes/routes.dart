import 'package:flutter/material.dart';

import '../Screens/first_page.dart';
import '../Screens/product_overview.dart';

class RoutesManager{
  static const firstPage = '/';
  static const productOverView = '/product_overview';
  

  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name) {
      case firstPage:
      return MaterialPageRoute(
        builder: (context) => const FirstPage(),
        );
      case productOverView:
      return MaterialPageRoute(builder: (context) => const ProductOverview());

      default:
           throw const FormatException('Route not found! check route again');  
    }
  }
}