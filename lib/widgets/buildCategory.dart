
import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
Widget buildCategorySection() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Category',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 8),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            buildCategoryChip('All'),
            buildCategoryChip('Historical Fiction'),
            buildCategoryChip('Engineering'),
            buildCategoryChip('Comedy'),
          ],
        ),
      ),
    ],
  );
}

Widget buildCategoryChip(String label) {
  bool isAllCategory = label == 'All';
  return Padding(
    padding: const EdgeInsets.only(right: 8.0),
    child: Chip(
      label: Text(
        label,
        style: TextStyle(
            color: isAllCategory ? AppColors.white : AppColors.grey,
            fontSize: 14,
            fontWeight: FontWeight.w300),
      ),
      backgroundColor: isAllCategory ? AppColors.primaryColor : AppColors.white,
    ),
  );
}