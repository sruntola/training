import 'package:flutter/material.dart';

class AdvertiseSection extends StatelessWidget {
  final String? image;
  final String? title;
  final String? description;
  final GestureTapCallback? onTap;
  const AdvertiseSection(
      {Key? key, this.image, this.title, this.description, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.black, offset: Offset(1.0, 1.0), blurRadius: 6)
          ],
          borderRadius: BorderRadius.circular(20),
          color: Theme.of(context).primaryColor),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Image.network(
            image!,
            fit: BoxFit.cover,
            width: 50,
            height: 50,
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(title!), Text(description!)],
            ),
          )
        ],
      ),
    );
  }
}
