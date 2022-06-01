import 'package:flutter/material.dart';
import '../models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("Item is ${item.title} pressed");
        },
        leading: Image.network(item.image),
        title: Text(item.title.substring(0, 10)),
        subtitle: Text(item.description.substring(0, 10)),
        trailing: Text(
          '₹ ${item.price.toString()}',
          style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
