import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Custom {
  static Widget container(Widget child) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.all(8.0),
      child: child,
    );
  }

  static Widget primaryTextButton(String text, Function()? onPressed) {
    return Container(
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            primary: Colors.red, backgroundColor: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Text(text),
        ),
      ),
    );
  }

  static AppBar appBar(BuildContext context, String title,
      {List<Widget>? actions}) {
    return AppBar(
      // toolbarHeight: 80,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
          ),
          SizedBox(height: 2),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Icon(Icons.location_on_rounded, size: 14),
                SizedBox(width: 4),
                InkWell(
                  onDoubleTap: () => Get.defaultDialog(
                      title: "LEONARDO DE LA CRUZ",
                      content: Text(
                        "Cra. 6 #29 Norte-648 a 29 Norte-1034,, Salento, Quindío",
                      )),
                  child: Text(
                    "Cra. 6 #29 Norte-648 a 29 Norte-1034,, Salento, Quindío",
                    style: TextStyle(fontSize: 13),
                  ),
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
