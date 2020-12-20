import 'package:flutter/material.dart';

import 'custom_bottom_nav_bar.dart';
import 'food_card.dart';
import 'food_card_row.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.menu,
                    size: 20,
                  ),
                  Spacer(),
                  Icon(
                    Icons.search,
                    size: 20,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Delicious Salads',
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                'we made healthy and delicious food',
                style: TextStyle(fontSize: 20, color: Colors.grey[800]),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  buildButton('salads', 1),
                  buildButton('soups', 2),
                  buildButton('grilled', 3),
                  Spacer(),
                  IconButton(icon: Icon(Icons.tune), onPressed: () {})
                ],
              ),
              SizedBox(
                height: 20,
              ),
              FoodCardRow(
                title: 'Chicken Salad',
                discription: 'Chicken salad with avocado',
                image: 'food3',
                price: '\$32.00',
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FoodCard(
                    title: 'mixed Salad',
                    discription: 'Mix Vegetables',
                    price: '\$24.00',
                    image: 'food1',
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  FoodCard(
                    title: 'Quino Salad',
                    discription: 'Spicy with garlic',
                    price: '\$24.00',
                    image: 'food1',
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Container buildButton(title, index) {
    return Container(
      height: 50,
      margin: EdgeInsets.only(right: 20),
      width: 80,
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        onPressed: () {},
        color: index == 1 ? Colors.black : Colors.grey[300],
        textColor: index == 1 ? Colors.white : Colors.black,
        child: Text(title),
      ),
    );
  }
}
