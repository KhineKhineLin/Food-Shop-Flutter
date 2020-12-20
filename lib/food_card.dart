import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final String title;
  final String discription;
  final String price;
  final String image;
  const FoodCard({
    Key key,
    this.title,
    this.discription,
    this.price,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          width: 140,
          height: 230,
          decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(100)),
        ),
        Positioned(
          top: 0,
          child: Container(
            height: 120,
            width: 120,
            child: Image.asset('assets/$image.png'),
          ),
        ),
        Positioned(
            top: 125,
            child: Column(
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  discription,
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  price,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 9,
                ),
                Positioned(
                    child: Icon(
                  Icons.add_circle,
                  color: Colors.black,
                  size: 20,
                ))
              ],
            ))
      ],
    );
  }
}
