import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_texts.dart';
import '../../constants/asset_paths.dart';
import '../../widgets/buildCategory.dart';
import '../../widgets/buildSection.dart';
class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> recentlyBorrowed = [
    {
      'daysLeft': '2 days left',
      'author': 'Elizabeth Acevedo',
      'title': '',
      'image': 'assets/images/pngs/book1.png',
      'pages': 350,
      'language': 'ENG',
      'rating': '4.2 ⭐',
      'synopsis':
      'A story about the power of family, relationships, and finding one\'s voice.',
      'reviews': [
        {
          'name': 'Ajani Chisom',
          'review': 'Amazing book!',
          'date': '2 weeks ago'
        },
        {
          'name': 'Amaka Nwafor',
          'review': 'A must-read!',
          'date': '1 week ago'
        },
      ],
    },
    {
      'daysLeft': '5 days left',
      'author': 'Yaya Papaya',
      'title': '',
      'image': 'assets/images/pngs/book2.png',
      'pages': 350,
      'language': 'ENG',
      'rating': '4.2 ⭐',
      'synopsis':
      'A story about the power of family, relationships, and finding one\'s voice.',
      'reviews': [
        {
          'name': 'Ajani Chisom',
          'review': 'Amazing book!',
          'date': '2 weeks ago'
        },
        {
          'name': 'Amaka Nwafor',
          'review': 'A must-read!',
          'date': '1 week ago'
        },
      ],
    },
    {
      'daysLeft': '3 days left',
      'author': 'Mark Bolt',
      'title': '',
      'image': 'assets/images/pngs/book3.png',
      'pages': 350,
      'language': 'ENG',
      'rating': '4.2 ⭐',
      'synopsis':
      'A story about the power of family, relationships, and finding one\'s voice.',
      'reviews': [
        {
          'name': 'Ajani Chisom',
          'review': 'Amazing book!',
          'date': '2 weeks ago'
        },
        {
          'name': 'Amaka Nwafor',
          'review': 'A must-read!',
          'date': '1 week ago'
        },
      ],
    },
  ];

  final List<Map<String, dynamic>> newArrival = [
    {
      'title': 'Clap When You Land',
      'author': 'Elizabeth Acevedo',
      'image': 'assets/images/pngs/book4.png',
      'pages': 350,
      'language': 'ENG',
      'rating': '4.2 ⭐',
      'subtitle2': '⭐ 4.2 ',
      'synopsis':
      'A story about the power of family, relationships, and finding one\'s voice.',
      'reviews': [
        {
          'name': 'Ajani Chisom',
          'review': 'Amazing book!',
          'date': '2 weeks ago'
        },
        {
          'name': 'Amaka Nwafor',
          'review': 'A must-read!',
          'date': '1 week ago'
        },
      ],
    },
    {
      'title': 'The Attic Child',
      'author': 'Lola Jaye',
      'image': 'assets/images/pngs/book5.png',
      'pages': 400,
      'language': 'ENG',
      'rating': '4.2 ⭐',
      'subtitle2': '⭐ 4.2 ',
      'synopsis':
      'A heart-wrenching tale of resilience and overcoming life\'s challenges.',
      'reviews': [
        {
          'name': 'Tolu Akin',
          'review': 'Deep and inspiring!',
          'date': '3 weeks ago'
        },
        {
          'name': 'Chidi Obasi',
          'review': 'A great read!',
          'date': '4 weeks ago'
        },
      ],
    },
  ];

  final List<Map<String, dynamic>> recommendedForYou = [
    {
      'title': 'Chemistry',
      'author': 'David R. Khan',
      'image': 'assets/images/pngs/book3.png',
      'pages': 250,
      'language': 'ENG',
      'rating': '4.2 ⭐',
      'subtitle2': '⭐ 4.2 ',
      'synopsis': 'An engaging guide to mastering chemistry concepts.',
      'reviews': [
        {
          'name': 'Ayo Bello',
          'review': 'Highly educational!',
          'date': '2 days ago'
        },
        {
          'name': 'Sarah James',
          'review': 'Well explained!',
          'date': '5 days ago'
        },
      ],
    },
    {
      'title': 'Take the Risk',
      'author': 'Ben Carson',
      'image': 'assets/images/pngs/book6.png',
      'pages': 300,
      'language': 'ENG',
      'rating': '4.2 ⭐',
      'subtitle2': '⭐ 4.2 ',
      'synopsis': 'An inspiring autobiography by a renowned neurosurgeon.',
      'reviews': [
        {
          'name': 'Chukwu Ebuka',
          'review': 'Inspirational!',
          'date': '1 week ago'
        },
        {
          'name': 'Oluchi Okonkwo',
          'review': 'Life-changing!',
          'date': '2 weeks ago'
        },
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8),
          child: CircleAvatar(
            backgroundImage: AssetImage(AssetPath.profileImg),
            radius: 20,
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppTexts.profileWelcome,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: AppColors.grey),
            ),
            Text(
              AppTexts.profileName,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: AppColors.black1),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Image.asset(
              AssetPath.notificationIcon,
              width: 24,
              height: 24,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 8,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search...',
                      hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Icon(Icons.search,
                          color: Colors.grey), // Set icon color
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide:
                        BorderSide(color: AppColors.white, width: 1.5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide:
                        BorderSide(color: AppColors.white, width: 2.0),
                      ),
                      filled: true,
                      fillColor: AppColors.white,
                    ),
                  ),
                ),

                SizedBox(width: 8),

                // Filter box
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: IconButton(
                    icon: Image.asset(
                      AssetPath.filterIcon,
                      width: 24,
                      height: 24,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            buildCategorySection(),
            SizedBox(height: 24),
            buildSection(
              title: 'Recently Borrowed',
              items: recentlyBorrowed,
              context: context,
              showSubtitle: true,

            ),
            SizedBox(height: 24),
            buildSection(
                title: 'New Arrival',
                items: newArrival,
                context: context,
                author: true,
                showSubtitle2: true),
            SizedBox(height: 15),
            buildSection(
                title: 'Recommended For You',
                items: recommendedForYou,
                context: context,
                author: true,
                showSubtitle2: true),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'My Books',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
        ],
      ),
    );
  }

}