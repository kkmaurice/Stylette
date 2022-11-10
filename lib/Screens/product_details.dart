// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:stylette/Models/product.dart';

class DetailsPage extends StatelessWidget {

  static const routeName = '/details_page';

  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final product = ModalRoute.of(context)!.settings.arguments as Product;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details Page'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        child: Text(product.name),
      ),
    );
  }
}