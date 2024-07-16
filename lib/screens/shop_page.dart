import 'package:coffee_shop/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
        builder: (context, value, child) => SafeArea(
                child: Padding(
              padding: EdgeInsets.all(25),
              child: Column(
                children: [
                  // header message
                  Text(
                    'How do you like your coffee?',
                    style: TextStyle(fontSize: 18),
                  ),
                  Gap(25),
                  // coffee  list
                  Expanded(
                      child: ListView.builder(itemBuilder: (context, index) {
                    //get individual coffee

                    //return the tile for the coffee
                  }))
                ],
              ),
            )));
  }
}
