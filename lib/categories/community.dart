import 'package:flutter/material.dart';
import 'package:website/categories/community/community_revitalization.dart';
import 'package:website/categories/community/infrastructure_projects.dart';
import 'package:website/categories/community/neighbourhood.dart';
import 'package:website/categories/community/public_safety.dart';

class Community extends StatelessWidget {
  const Community({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SizedBox(
          width: 1000,
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 2.0),
                child: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Flexible(
                child: Text(
                  'USA INCENTIVES',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.blue,
        actions: [
          TextButton(
            onPressed: () {
              // Perform action
            },
            child: const Text(
              'About US',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              // Perform action
            },
            child: const Text(
              'What to do',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 8),
            child: Row(
              children: [
                const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                const SizedBox(width: 8),
                Container(
                  width: 150, // Adjust the width as needed
                  child: const TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: TextStyle(color: Colors.white54),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
        toolbarHeight: 100,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 160, vertical: 40),
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    'assets/images/community.png',
                    fit: BoxFit.fitWidth,
                    filterQuality: FilterQuality.high,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(30, 20, 30, 5),
                  child: Text(
                    'Community Developnment',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(30, 20, 30, 5),
                  child: Text(
                    'Community development endeavors strive to uplift localities by bolstering both their economic prosperity and quality of life. They encompass initiatives geared towards bolstering infrastructure, rejuvenating neighborhoods, and nurturing communal well-being.',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      InfrastructureProjects()));
                        },
                        child: const Card(
                          color: Colors.black,
                          margin: EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.home,
                                  color: Colors.white), // Add icon to Card 1
                              SizedBox(height: 5),
                              Text(
                                'Infrastructure Projects',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CommunityRevitalization()));
                        },
                        child: const Card(
                          color: Colors.black,
                          margin: EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.business,
                                  color: Colors.blue), // Add icon to Card 2
                              SizedBox(height: 5),
                              Text('Community Revitilization programs',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Neighbourhood()));
                        },
                        child: const Card(
                          color: Colors.black,
                          margin: EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.school,
                                  color: Colors.white), // Add icon to Card 3
                              SizedBox(height: 5),
                              Text(
                                'Neighbourhood Improvement Grants',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PublicSafety()));
                        },
                        child: const Card(
                          color: Colors.black,
                          margin: EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.shopping_cart,
                                  color: Colors.green), // Add icon to Card 4
                              SizedBox(height: 5),
                              Text('Public Safety Initiatives',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
