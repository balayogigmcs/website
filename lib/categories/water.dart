import 'package:flutter/material.dart';
import 'package:website/categories/water/water_management.dart';

class Water extends StatelessWidget {
  const Water({Key? key}) : super(key: key);

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
                    'assets/images/water.png',
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
                    'Water Programs',
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
                    'Housing programs offer diverse support, including affordable housing initiatives, homeownership assistance, rental aid, and property tax relief, catering to various needs from securing affordable homes to easing property tax burdens, ensuring stable housing for all.',
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
                                builder: (context) => WaterManagement(),
                              ));
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
                                'Water Department',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
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
