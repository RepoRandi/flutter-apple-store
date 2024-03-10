import 'package:apple_store/core/constants/variables.dart';
import 'package:apple_store/core/core.dart';
import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  final String imagePath;
  final String label;
  final VoidCallback onPressed;
  final bool isActive;

  const CategoryButton({
    Key? key,
    required this.imagePath,
    required this.label,
    required this.onPressed,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: const BorderRadius.all(Radius.circular(8.0)),
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.network(
              '${Variables.baseImageUrl}/categories/$imagePath',
              width: 80.0,
              height: 80.0,
              fit: BoxFit.contain,
            ),
            SizedBox(
              width: 70.0,
              child: Text(
                label,
                style: TextStyle(
                  color: isActive ? AppColors.primary : AppColors.black,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
