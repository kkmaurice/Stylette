// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stylette/Providers/product_controller.dart';
import 'package:transparent_image/transparent_image.dart';

import 'product_details.dart';

class ProductOverview extends StatelessWidget {
  const ProductOverview({super.key});

  static const routName = '/product_overview';

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<ProductController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Overview'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: provider.items.length,
        itemBuilder: (context, index) {
          return Container(
            height: 600,
            child: GridView.builder(
              gridDelegate: const 
              SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemCount: provider.items.length,
              itemBuilder: (context, index) {
                return productContainer(provider: provider, index: index);
                
              }
            ),
          );
        },
      )
    );
    
  }
}

class productContainer extends StatelessWidget {
   productContainer({
    Key? key,
    required this.provider,
    required this.index,
  }) : super(key: key);
  int index;
  final ProductController provider;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey[400],
      elevation: 0,
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(DetailsPage.routeName, arguments: provider.items[index].id);
            },
            child: Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              child: FadeInImage.memoryNetwork(
                      placeholder: kTransparentImage,
                      image: provider.items[index].imageUrl,
                      fit: BoxFit.cover,
                    ),
            ),
          ),
          GestureDetector(
            onTap: () {
              
            },
            child: Container(
              padding: const EdgeInsets.only(left: 10, right: 20),
              color: Colors.blueGrey[400],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Buy now'),
                  Icon(Icons.arrow_forward)
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}