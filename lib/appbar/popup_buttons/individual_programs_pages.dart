import 'package:flutter/material.dart';

class IndividualProgramPages extends StatelessWidget {
  const IndividualProgramPages({super.key});

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
                  'Individual Program Pages',
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 30, 5),
                child: Text(
                  'Description',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 30, 5),
                child: Text(
                  'Housing programs offer diverse support, including affordable housing initiatives, homeownership assistance, rental aid, and property tax relief, catering to various needs from securing affordable homes to easing property tax burdens, ensuring stable housing for all.',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Handle onTap for Card 1
                      print('Card 1 tapped');
                    },
                    child: const Card(
                      color: Colors.black,
                      margin: EdgeInsets.only(right: 500),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.home,
                              color: Colors.white), // Add icon to Card 1
                          SizedBox(height: 5),
                          Text(
                            'Eligibility Criteria',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  GestureDetector(
                    onTap: () {
                      // Handle onTap for Card 2
                      print('Card 2 tapped');
                    },
                    child: const Card(
                      color: Colors.black,
                      margin: EdgeInsets.only(right: 500),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.business,
                              color: Colors.blue), // Add icon to Card 2
                          SizedBox(height: 5),
                          Text(
                            'Application Process',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  GestureDetector(
                    onTap: () {
                      // Handle onTap for Card 3
                      print('Card 3 tapped');
                    },
                    child: const Card(
                      color: Colors.black,
                      margin: EdgeInsets.only(right: 500),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.school,
                              color: Colors.white), // Add icon to Card 3
                          SizedBox(height: 5),
                          Text(
                            'Resources and Support',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  GestureDetector(
                    onTap: () {
                      // Handle onTap for Card 4
                      print('Card 4 tapped');
                    },
                    child: const Card(
                      color: Colors.black,
                      margin: EdgeInsets.only(right: 500),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.shopping_cart,
                              color: Colors.green), // Add icon to Card 4
                          SizedBox(height: 5),
                          Text(
                            'Success Stories / Testimonials',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
