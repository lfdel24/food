import 'package:flutter/material.dart';

class Custom {
  AppBar appBar(BuildContext context, String title, {List<Widget>? actions}) {
    return AppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Icon(Icons.location_on_rounded, size: 14),
                SizedBox(width: 4),
                Text(
                  "Cra. 6 #29 Norte-648 a 29 Norte-1034,, Salento, Quindío",
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),
          ),
        ],
      ),
      actions: actions,
    );
  }
}
