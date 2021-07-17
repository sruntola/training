import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? label;
  final IconData? icon;
  final GestureTapCallback? onPressed;
  final Color? backgroundColor;
  const CustomButton(
      {Key? key, this.label, this.icon, this.backgroundColor, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
            color: backgroundColor, borderRadius: BorderRadius.circular(35)),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (icon != null)
              Icon(
                icon,
                color: Colors.white,
                size: 32,
              ),
            if (icon != null)
              SizedBox(
                width: 20,
              ),
            Text(
              label!,
              style: Theme.of(context).textTheme.headline3,
            )
          ],
        ),
      ),
    );
  }
}
