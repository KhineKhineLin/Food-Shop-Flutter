import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(50)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.white,
                size: 25,
              ),
              onPressed: () {},
            ),
            IconButton(
                icon: Icon(
                  Icons.workspaces_filled,
                  color: Colors.white,
                  size: 25,
                ),
                onPressed: () {}),
            IconButton(
                icon: Icon(
                  Icons.chat_outlined,
                  color: Colors.white,
                  size: 25,
                ),
                onPressed: () {}),
            IconButton(
                icon: Icon(
                  Icons.person_outline,
                  color: Colors.white,
                  size: 25,
                ),
                onPressed: () {})
          ],
        ));
  }
}
