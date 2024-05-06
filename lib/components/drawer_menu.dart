import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({
    super.key,
    required this.menuText,
    this.onTap,
  });
  final Function()? onTap;
  final String menuText;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.black),
          ),
        ),
        child: Text(
          menuText,
          style: const TextStyle(fontSize: 25),
        ),
      ),
      onTap: onTap ?? () {},
    );
  }
}
