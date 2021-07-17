import 'package:covid_19_ui/models/menu.dart';
import 'package:flutter/material.dart';

class CustomMenu extends StatelessWidget {
  final Menu? menu;
  const CustomMenu({Key? key, this.menu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20, right: 20),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.pinkAccent,
                ),
              ),
              Icon(
                Icons.person,
                size: 80,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            menu!.label!,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
