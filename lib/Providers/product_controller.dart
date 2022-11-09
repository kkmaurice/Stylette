
import 'package:flutter/cupertino.dart';

import '../Models/product.dart';

class ProductController with ChangeNotifier{
  final List<Product> _items = [
    Product(
      id: 1,
      name: 'Africana',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'https://images.unsplash.com/photo-1470259078422-826894b933aa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGhhaXIlMjBzYWxvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    ),
    Product(
      id: 2,
      name: 'Afr- kink',
      description: 'A nice pair of trousers.',
      price: 59.99,
      imageUrl:
          'https://images.unsplash.com/photo-1522337360788-8b13dee7a37e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGhhaXIlMjBzYWxvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    ),
    Product(
      id: 3,
      name: 'Jenky',
      description: 'Warm and cozy - exactly what you need for the winter.',
      price: 19.99,
      imageUrl:
          'https://images.unsplash.com/photo-1602693130555-a1a37fda607b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGhhaXIlMjBicmFpZHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    ),
    Product(
      id: 4,
      name: 'Pilmow',
      description: 'Prepare any meal you want.',
      price: 49.99,
      imageUrl:
          'https://plus.unsplash.com/premium_photo-1661759708290-3d1865e7572e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aGFpciUyMGJyYWlkc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    ),
    Product(
      id: 4,
      name: 'Jikono',
      description: 'Look good, feel nice in every ones eye.',
      price: 49.99,
      imageUrl:
          'https://images.unsplash.com/photo-1606415918835-88d0614e75ad?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8aGFpciUyMGJyYWlkc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    ),
    Product(
      id: 5,
      name: 'Americana',
      description: 'Just some dummy description for understanding.',
      price: 49.99,
      imageUrl:
          'https://images.unsplash.com/photo-1577806934037-32d94e326e84?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8aGFpciUyMGJyYWlkc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    ),
    Product(
      id: 6,
      name: 'Dembela',
      description: 'If you to look nice, you have to feel nice.',
      price: 49.99,
      imageUrl:
          'https://images.unsplash.com/photo-1616166183781-0fdd2ef83374?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGhhaXIlMjBicmFpZHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    ),
    Product(
      id: 7,
      name: 'Pencil',
      description: 'Pencil makes your hair beautiful than ever.',
      price: 49.99,
      imageUrl:
          'https://images.unsplash.com/photo-1612873019741-bece4284f369?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGhhaXIlMjBicmFpZHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    ),
    Product(
      id: 8,
      name: 'Juliana',
      description: 'Juliana is a  perfect hair braid meant for any person to look cool.',
      price: 49.99,
      imageUrl:
          'https://images.unsplash.com/photo-1506177079730-afde3563bca7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGhhaXIlMjBicmFpZHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    ),
  ];

  List<Product> get items {
    return [..._items];
  }
}
  