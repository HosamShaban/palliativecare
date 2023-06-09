import 'package:flutter/material.dart';

class TabCard extends StatelessWidget {
  final String? title;
  final IconData? iconData;
  final Color? color;
  final VoidCallback? onTap;
  const TabCard({
    Key? key,
    this.title,
    this.iconData,
    this.color,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(top: 3),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 32,
                  width: 32,
                  child: Icon(
                    iconData,
                    color: color,
                  ),
                ),
              ],
            ),
            Text(
              title!,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 10,
                color: color,
              ),
            )
          ],
        ),
      ),
    );
  }
}

