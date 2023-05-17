import 'package:flutter/material.dart';
import 'package:store_app/models/prodect_model.dart';

import '../screens/update_prodect_page.dart';

class CustomCard extends StatelessWidget {
  CustomCard({
    required this.prodect,
    super.key,
  });
  ProdectModel prodect;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, UpdateProductPage.id,arguments: prodect);
      },
      child: Stack(clipBehavior: Clip.none, children: [
        Container(
          // height: 130,
          // width: 220,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              blurRadius: 40,
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 0,
              offset: Offset(10, 10),
            ),
          ]),
          child: Card(
            elevation: 10,
            // color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      prodect.title.substring(0, 6),
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          r'$' '${prodect.price.toString()}',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ]),
            ),
          ),
        ),
        Positioned(
            right: 32,
            top: -60,
            child: Image.network(
              prodect.image,
              height: 100,
              width: 100,
            ))
      ]),
    );
  }
}
