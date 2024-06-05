import 'package:flutter/material.dart';
import 'package:website/appbar/information.dart';
import 'package:website/categories/business.dart';
import 'package:website/categories/community.dart';
import 'package:website/categories/environmental.dart';
import 'package:website/categories/housing.dart'; 
import 'package:website/categories/employment.dart';
import 'package:website/categories/land.dart'; // Import the housing.dart file
import 'package:website/categories/water.dart';

class CategoryMenu extends StatelessWidget {
  final Information information;
  final String? selectedCategory;
  final Function(String)? onCategorySelected;

  const CategoryMenu({
    required this.information,
    required this.selectedCategory,
    required this.onCategorySelected,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      child: Row(
        children: [
          Icon(Icons.category),
          SizedBox(
            width: 14,
          ),
          Text('PROGRAMS')
        ],
      ),
      itemBuilder: (BuildContext context) {
        return information.subCategories.keys.map((String category) {
          return PopupMenuItem<String>(
            value: category,
            child: Text(category),
            onTap: () {
              if (category == 'Housing Programs') {
                // If 'Housing Programs' is selected, navigate to the housing.dart file
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Housing()),
                );
              }
              else if(category == 'Business Incentives'){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Business()),
                );
              }
              else if(category == 'Employment Services'){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Employment()),
                );
              }
              else if(category == 'Community Development'){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Community()),
                );
              }
              else if(category == 'Environmental Initiatives'){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Environmental()),
                );
              }
              else if(category == 'Land Management System'){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Land()),
                );
              }
              else if(category == 'Water Department'){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Water()),
                );
              }
              else {
                onCategorySelected!(category);
              }
            },
          );
        }).toList();
      },
      onSelected: onCategorySelected,
    );
  }
}
