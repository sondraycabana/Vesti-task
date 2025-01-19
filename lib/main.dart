import 'package:flutter/material.dart';
import 'package:vesti/constants/app_colors.dart';
import 'package:vesti/constants/app_texts.dart';
import 'package:vesti/constants/asset_paths.dart';
import 'onboard/onboardScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: HomeScreen(),
      // home: OnboardingScreen2(),
      home: OnboardingScreen1(),
    );
  }
}

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



}

class BookDetailScreen extends StatelessWidget {
  final Map<String, dynamic> book;

  const BookDetailScreen({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(book['title']),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  book['image'],
                  width: 150,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 16),
              Text(
                book['title'],
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'by ${book['author']}',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildInfoChip('Rating', book['rating'].toString()),
                  buildInfoChip('Pages', book['pages'].toString()),
                  buildInfoChip('Language', book['language']),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Text(
                    'Synopsis',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Fantasy',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Thriller',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Text(
                book['synopsis'],
                style: TextStyle(fontSize: 14, color: Colors.grey[700]),
              ),
              SizedBox(height: 16),
              Text(
                'Reviews',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Column(
                children: book['reviews']
                    .map<Widget>((review) => ListTile(
                          title: Text(review['name']),
                          subtitle: Text(review['review']),
                          trailing: Text(review['date']),
                        ))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildInfoChip(String label, String value) {
    return Column(
      children: [
        Chip(
          label: Text('$label:'),
          backgroundColor: Colors.blue.shade100,
        ),
        Chip(
          label: Text('$value'),
          backgroundColor: Colors.blue.shade100,
        ),
      ],
    );
  }
}

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















