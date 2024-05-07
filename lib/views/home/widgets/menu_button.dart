import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({
    super.key,
    required this.imagePath,
    required this.textMenu,
    this.onTap,
  });
  final String imagePath;
  final String textMenu;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () {},
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.fromLTRB(15, 15, 15, 7),
        decoration: BoxDecoration(
          color: const Color(0xffE2EEC6),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(imagePath),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              textMenu,
            )
          ],
        ),
      ),
    );
  }
}
