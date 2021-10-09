import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top, left: 25, right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              RichText(
                text: const TextSpan(children: [
                  TextSpan(
                    text: "Howdy, What are you \n Looking For ?",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: '👀',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ]),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 1),
                        spreadRadius: 0.1,
                        blurRadius: 0.1,
                        color: Colors.grey.withOpacity(0.3),
                      ),
                    ]),
                child: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.grey,
                ),
              ),
              Positioned(
                right: 10,
                top: 10,
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
