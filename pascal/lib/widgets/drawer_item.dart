import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  const DrawerItem({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Row(
        children: [
          Icon(
            icon,
            size: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text(title),
          ),
          Expanded(child: Container()),
          const Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(Icons.arrow_forward),
          )
        ],
      ),
    );
  }
}
