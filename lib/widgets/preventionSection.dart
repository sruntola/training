import 'package:covid_19_ui/models/menu.dart';
import 'package:covid_19_ui/widgets/menu.dart';
import 'package:flutter/material.dart';

class PreventionSection extends StatelessWidget {
  final String? title;
  final Function? onPressed;
  final List<Menu>? menuList;
  const PreventionSection({Key? key, this.title, this.onPressed, this.menuList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Text(
              title!,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: menuList!
                  .map((menu) => GestureDetector(
                      onTap: () {
                        onPressed!(menu);
                      },
                      child: CustomMenu(menu: menu)))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
