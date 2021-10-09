import 'package:e_commerce_clothe/models/clothes.dart';
import 'package:e_commerce_clothe/screens/home/widget/best_sell.dart';
import 'package:e_commerce_clothe/screens/home/widget/category_list_title.dart';
import 'package:e_commerce_clothe/screens/home/widget/clothes_item.dart';
import 'package:e_commerce_clothe/screens/home/widget/custom_app_bar.dart';
import 'package:e_commerce_clothe/screens/home/widget/new_arrival.dart';
import 'package:e_commerce_clothe/screens/home/widget/search_input.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final clothes = Clothes.generateClothes()[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(),
            SearchInput(),
            NewArrival(),
            BestSell(),
          ],
        ),
      ),
    );
  }
}
