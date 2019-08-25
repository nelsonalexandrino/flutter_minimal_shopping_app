import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  int cardColor;
  String imgURL, title, previousPrice, price;

  ProductCard(
      this.cardColor, this.imgURL, this.title, this.previousPrice, this.price);

  @override
  Widget build(BuildContext context) {
    return new Container(
      width: double.infinity,
      height: 318.0,
      decoration: BoxDecoration(
          color: Color(cardColor),
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(color: Colors.grey.withOpacity(.3), width: .2)),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 8.0,
          ),
          Image.asset(
            imgURL,
            width: 281.0,
            height: 191.0,
          ),
          Text(title, style: TextStyle(fontSize: 25.0, fontFamily: 'Raleway')),
          SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  onPressed: () {},
                ),
                Column(
                  children: <Widget>[
                    Text(previousPrice,
                        style: TextStyle(
                          color: Color(0xFFfeb0ba),
                          fontSize: 16.0,
                        )),
                    SizedBox(
                      height: 12.0,
                    ),
                    Text(price,
                        style: TextStyle(
                          fontSize: 20.0,
                        ))
                  ],
                ),
                IconButton(
                  icon: Icon(Icons.add_shopping_cart),
                  onPressed: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
