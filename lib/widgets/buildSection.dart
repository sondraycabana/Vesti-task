import 'package:flutter/material.dart';

import '../Views/bookDetailScreen/bookDetailScreen.dart';
import '../constants/app_colors.dart';
import '../main.dart';

Widget buildSection({
  required String title,
  required List<Map<String, dynamic>> items,
  bool showSubtitle = false,
  bool author = false,
  bool showSubtitle2 = false,
  required BuildContext context,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.black1),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'View all',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.primaryColor),
            ),
          ),
        ],
      ),
      SizedBox(height: 12),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: items.map((item) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BookDetailScreen(book: item),
                  ),
                );
              },
              child: buildBookCard(item, showSubtitle, author, showSubtitle2),
            );
          }).toList(),
        ),
      ),
    ],
  );
}

Widget buildBookCard(Map<String, dynamic> item, bool showSubtitle,
    bool author, bool showSubtitle2) {
  return Padding(
    padding: const EdgeInsets.only(right: 16.0),
    child: Column(
      crossAxisAlignment:
      CrossAxisAlignment.start, // Aligns all children to the left
      children: [
        Container(
          width: 199,
          height: 257,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: AssetImage(item['image']),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 8),
        Align(
          alignment: Alignment.centerLeft, // Align title to the left
          child: Text(
            item['title'],
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        if (showSubtitle)
          Align(
            alignment: Alignment.centerLeft, // Align day left to the left
            child: Text(
              item['daysLeft']!,
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ),
        if (author)
          Align(
            alignment: Alignment.centerLeft, // Align author to the left
            child: Text(
              item['author']!,
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ),
        if (showSubtitle2)
          Align(
            alignment: Alignment.centerLeft, // Align subtitle2 to the left
            child: Text(
              item['subtitle2']!,
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ),
      ],
    ),
  );
}