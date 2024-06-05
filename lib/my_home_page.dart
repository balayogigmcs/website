import 'package:flutter/material.dart';
import 'package:website/appbar/popup_buttons/individual_programs_pages.dart';
import 'package:website/body_styling.dart';
import 'package:website/appbar/information.dart';
import 'package:website/appbar/popup_buttons/categories.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Information information = Information();
  String? _selectedCategory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          children: [
            Text(
              ' PUBLIC SECTOR ',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            Text(
              'INNOVATIONS',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 32, 173, 239),
        actions: [
          PopupMenuButton<String>(
            child: const Row(
              children: [
                Icon(Icons.home),
                SizedBox(
                  width: 8,
                ),
                Text('HOME')
              ],
            ),
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  value: 'Home',
                  child: Text('Welcome Message'),
                ),
                const PopupMenuItem(
                  value: 'Home',
                  child: Text('Quick Links'),
                ),
                const PopupMenuItem(
                  value: 'Home',
                  child: Text('Search bar'),
                ),
                const PopupMenuItem(
                  value: 'Home',
                  child: Text('Featured Incentives'),
                ),
              ];
            },
            onSelected: (String value) {
              setState(() {
                _selectedCategory = value;
              });
            },
          ),
          const SizedBox(
            width: 14,
          ),
          CategoryMenu(
            information: information,
            selectedCategory: _selectedCategory,
            onCategorySelected: (String value) {
              setState(() {
                _selectedCategory = value;
              });
            },
          ),
          if (_selectedCategory != null &&
              information.subCategories.containsKey(_selectedCategory!))
            PopupMenuButton<String>(
              icon: const Icon(Icons.arrow_drop_down),
              itemBuilder: (BuildContext context) {
                return information.subCategories[_selectedCategory!]!
                    .map((String subcategory) {
                  return PopupMenuItem<String>(
                    value: subcategory,
                    child: Text(subcategory),
                  );
                }).toList();
              },
              onSelected: (String value) {
                // Handle subcategory selection
              },
            ),
          const SizedBox(
            width: 14,
          ),
          PopupMenuButton<String>(
            child: const Row(
              children: [
                Icon(Icons.pages),
                SizedBox(
                  width: 8,
                ),
                Text('Individual Program Pages'),
              ],
            ),
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  value: 'Individual Program Pages',
                  child: const Text('Description'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const IndividualProgramPages()));
                  },
                ),
                const PopupMenuItem(
                  value: 'Individual Program Pages',
                  child: Text('Eligibility Criteria'),
                ),
                const PopupMenuItem(
                  value: 'Individual Program Pages',
                  child: Text('Application Process'),
                ),
                const PopupMenuItem(
                  value: 'Individual Program Pages',
                  child: Text('Resources and Support'),
                ),
                const PopupMenuItem(
                  value: 'Individual Program Pages',
                  child: Text('Success Stories / Testimonals'),
                ),
              ];
            },
            onSelected: (String value) {
              setState(() {
                _selectedCategory = value;
              });
            },
          ),
          const SizedBox(
            width: 14,
          ),
          PopupMenuButton<String>(
            child: const Row(
              children: [
                Icon(Icons.newspaper),
                SizedBox(
                  width: 8,
                ),
                Text('News and Updates'),
              ],
            ),
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  value: 'News and Updates',
                  child: Text('Latest Announcements'),
                ),
                const PopupMenuItem(
                  value: 'News and Updates',
                  child: Text('Success Stories'),
                ),
                const PopupMenuItem(
                  value: 'News and Updates',
                  child: Text('Events and Workshops'),
                ),
              ];
            },
            onSelected: (String value) {
              setState(() {
                _selectedCategory = value;
              });
            },
          ),
          const SizedBox(
            width: 14,
          ),
          PopupMenuButton<String>(
            child: const Row(
              children: [
                Icon(Icons.settings),
                SizedBox(
                  width: 8,
                ),
                Text('Resources and Tools'),
              ],
            ),
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem<String>(
                  value: 'Resources and Tools',
                  child: Text('Downloadble Forms'),
                ),
                const PopupMenuItem<String>(
                  value: 'Resources and Tools',
                  child: Text('Calculators and Tools'),
                ),
                const PopupMenuItem<String>(
                  value: 'Resources and Tools',
                  child: Text('FAQs'),
                ),
                const PopupMenuItem<String>(
                  value: 'Resources and Tools',
                  child: Text('Glossary'),
                ),
              ];
            },
            onSelected: (String value) {
              setState(() {
                _selectedCategory = value;
              });
            },
          ),
          const SizedBox(
            width: 14,
          ),
          PopupMenuButton<String>(
            child: const Row(
              children: [
                Icon(Icons.contact_emergency),
                SizedBox(
                  width: 8,
                ),
                Text('CONTACT US'),
              ],
            ),
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem<String>(
                  value: 'Contact Us',
                  child: Text('Contact Information'),
                ),
                const PopupMenuItem<String>(
                  value: 'Contact Us',
                  child: Text('Feedback Form'),
                ),
                const PopupMenuItem<String>(
                  value: 'Contact Us',
                  child: Text('Social Media Links'),
                ),
              ];
            },
            onSelected: (String value) {
              setState(() {
                _selectedCategory = value;
              });
            },
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Handle search button click
            },
          ),
        ],
      ),
      body: const BodyStyling(),
    );
  }
}
