import 'package:e_commerce_clothe/models/clothes.dart';
import 'package:e_commerce_clothe/screens/home/widget/category_list_title.dart';
import 'package:e_commerce_clothe/screens/home/widget/clothes_item.dart';
import 'package:flutter/material.dart';

class NewArrival extends StatelessWidget {
  // const NewArrival({Key? key}) : super(key: key);
  final clothesList = Clothes.generateClothes();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CategoryListTitle(title: "New arrival"),
          Container(
            height: 280,
            child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 25),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>
                    ClothesItem(clothes: clothesList[index]),
                separatorBuilder: (_, index) => SizedBox(
                      width: 10,
                    ),
                itemCount: clothesList.length),
          ),
        ],
      ),
    );
  }
}
