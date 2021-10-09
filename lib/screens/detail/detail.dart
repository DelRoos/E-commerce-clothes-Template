import 'package:e_commerce_clothe/models/clothes.dart';
import 'package:e_commerce_clothe/screens/detail/widgets/add_cart.dart';
import 'package:e_commerce_clothe/screens/detail/widgets/clothes_info.dart';
import 'package:e_commerce_clothe/screens/detail/widgets/detail_app_bar.dart';
import 'package:e_commerce_clothe/screens/detail/widgets/size_list.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key, required this.clothes}) : super(key: key);
  final Clothes clothes;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Text("Yo bro"),
            DetailAppBar(
              clothes: clothes,
            ),
            ClothesInfo(
              clothes: clothes,
            ),
            SizeList(),
            AddCart(
              clothes: clothes,
            ),
          ],
        ),
      ),
    );
  }
}
