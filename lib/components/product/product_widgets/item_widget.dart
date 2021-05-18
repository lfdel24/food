import 'package:flutter/material.dart';

class BuilderItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white30,
      margin: EdgeInsets.all(8),
      child: Row(
        children: [
          ClipOval(
            child: Image.network(
              'https://i.pinimg.com/736x/1a/e6/bd/1ae6bdd3616eb2c6fd7e181a8615fc06.jpg',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hamburguesa triple doble",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text("Detalle"),
              Text("1.000.000"),
            ],
          ),
        ],
      ),
    );
  }
}
