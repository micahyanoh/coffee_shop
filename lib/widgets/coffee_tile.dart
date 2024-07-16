import 'package:coffee_shop/models/coffee.dart';
import 'package:coffee_shop/utils/constants.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppCoffeeTile extends StatelessWidget {
  AppCoffeeTile(
      {super.key,
      required this.coffee,
      required this.onPressed,
      required this.icon});
  final Coffee coffee;
  final Widget icon;
  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: coffeeTile,
      ),
      child: ListTile(
        title: Text(coffee.name),
        subtitle: Text(coffee.price),
        leading: Image.asset(coffee.imagePath),
        trailing: IconButton(
          icon: icon,
          onPressed: onPressed,
        ),
      ),
    );
  }
}
