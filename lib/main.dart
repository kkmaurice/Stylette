import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stylette/Screens/first_page.dart';
import 'package:stylette/Screens/product_overview.dart';

import 'Providers/product_controller.dart';
import 'Routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProductController()),
      ],
      child: MaterialApp(
        title: 'Stylette',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.grey,
        ),
        home: const FirstPage(),
        
        initialRoute: RoutesManager.firstPage,
        onGenerateRoute: RoutesManager.generateRoute,
    
          routes: {
           // '/': (context) => const FirstPage(),
            ProductOverview.routName: (context) => const ProductOverview(),
          },
      ),
    );
  }
}

