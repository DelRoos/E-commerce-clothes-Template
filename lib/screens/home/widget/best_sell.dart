import 'package:e_commerce_clothe/screens/home/widget/category_list_title.dart';
import 'package:flutter/material.dart';

class BestSell extends StatelessWidget {
  const BestSell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CategoryListTitle(title: 'Best Of Sell'),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 25),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset("assets/images/best1.png"),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Miniso Woman Oversize",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, height: 1.5),
                          ),
                          Text(
                            "T-Shirt",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, height: 1.5),
                          ),
                          Text(
                            "\$79.99",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                height: 1.5,
                                color: Theme.of(context).primaryColor),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(9),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.9),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 15,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
