import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:website/categories/business.dart';
import 'package:website/categories/community.dart';
import 'package:website/categories/employment.dart';
import 'package:website/categories/housing.dart';
import 'package:website/categories/land.dart';
import 'package:website/categories/water.dart';
import 'package:website/homepage/news_and_updates.dart';
import 'package:website/homepage/resources_and_tools.dart';

class BodyStyling extends StatelessWidget {
  const BodyStyling({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          color: Colors.white,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 30),
                      Text(
                        'PUBLIC SECTOR INNOVATIONS',
                        style: TextStyle(fontSize: 36),
                      ),
                      SizedBox(width: 300),
                      Expanded(
                        child: TextField(
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            hintText: 'Search...',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        'assets/images/psi.png',
                        width: 1000,
                        height: 600,
                        fit: BoxFit.fill,
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(100.0, 20, 100, 20),
                      child: RichText(
                        textAlign: TextAlign.justify,
                        text: const TextSpan(
                          text: 'Welcome to ',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'USA INCENTIVES ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            TextSpan(
                                text:
                                    ', your ultimate guide to unlocking the vast array of incentives available in the United States! Whether you\'re a business owner, entrepreneur, student, or homeowner, discover a wealth of opportunities designed to support your goals and aspirations. Explore various programs, grants, tax credits, and resources tailored to empower individuals and organizations across every sector. Let\'s navigate the landscape of incentives together and pave the way for success in the land of opportunity',
                                style: TextStyle(
                                  fontSize: 18,
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const ImageGrid(),
                const SizedBox(height: 50),
                Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(
                          15.0), // Increased border radius for a smoother look
                      child: Image.asset(
                        'assets/images/news_and_updates.png',
                        width: 1000,
                        height: 600,
                        fit: BoxFit.cover,
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                    Container(
                      width: 1000,
                      height: 600,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            15.0), // Same border radius as ClipRRect
                        gradient: LinearGradient(
                          colors: [
                            Colors.black.withOpacity(0.6),
                            Colors.transparent
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 50,
                      left: 40, // Increased left padding for better layout
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(
                                  255, 255, 255, 255), // Background color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              padding: EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 20),
                              shadowColor: Colors.black.withOpacity(0.3),
                              elevation: 5,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const NewsAndUpdates()),
                              );
                            },
                            child: const Text(
                              'News and Updates',
                              style: TextStyle(
                                fontSize: 28,
                                color: Color.fromARGB(255, 0, 0,
                                    0), // White text for better contrast
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 60),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 255, 255, 255),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              shadowColor: Colors.black.withOpacity(0.3),
                              elevation: 5,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const NewsAndUpdates()),
                              );
                            },
                            child: const Text(
                              'Latest Announcements',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          const SizedBox(height: 40),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 255, 255, 255),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              shadowColor: Colors.black.withOpacity(0.3),
                              elevation: 5,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const NewsAndUpdates()),
                              );
                            },
                            child: const Text(
                              'Success Stories',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          const SizedBox(height: 40),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 255, 255, 255),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              shadowColor: Colors.black.withOpacity(0.3),
                              elevation: 5,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const NewsAndUpdates()),
                              );
                            },
                            child: const Text(
                              'Events and Workshops',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    ClipRRect(
                      // borderRadius: BorderRadius.circular(15.0), // Increased border radius for a smoother look
                      child: Image.asset(
                        'assets/images/RT.png',
                        width: 1000,
                        height: 600,
                        fit: BoxFit.cover,
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                    Container(
                      width: 1000,
                      height: 600,
                      decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(15.0), // Same border radius as ClipRRect
                        gradient: LinearGradient(
                          colors: [
                            Colors.black.withOpacity(0.6),
                            Colors.transparent
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 50,
                      left: 40, // Increased left padding for better layout
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(
                                  255, 255, 255, 255), // Background color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              padding: EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 20),
                              shadowColor: Colors.black.withOpacity(0.3),
                              elevation: 5,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ResourcesAndTools()),
                              );
                            },
                            child: const Text(
                              'Resources and Tools',
                              style: TextStyle(
                                fontSize: 28,
                                color: Color.fromARGB(255, 0, 0,
                                    0), // White text for better contrast
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 60),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 255, 255, 255),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              shadowColor: Colors.black.withOpacity(0.3),
                              elevation: 5,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ResourcesAndTools()),
                              );
                            },
                            child: const Text(
                              'Calculator\'s and Tools',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          const SizedBox(height: 40),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 255, 255, 255),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              shadowColor: Colors.black.withOpacity(0.3),
                              elevation: 5,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ResourcesAndTools()),
                              );
                            },
                            child: const Text(
                              'FAQ\'s',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          const SizedBox(height: 40),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 255, 255, 255),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              shadowColor: Colors.black.withOpacity(0.3),
                              elevation: 5,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ResourcesAndTools()),
                              );
                            },
                            child: const Text(
                              'Glossary',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                Container(
                  width: double.infinity, // Full width of the container
                  color: Colors.black, // Background color
                  padding: const EdgeInsets.symmetric(vertical: 50),
                  child: const Column(
                    children: [
                      const Text(
                        'Contact Us',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      const SizedBox(height: 20),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  'Contact Information',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  'Phone: xxx-xxx-xxxx',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.white),
                                ),
                                Text(
                                  'Email: example@example.com',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 50),
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  'Feedback Form',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  'Provide your valuable feedback',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 50),
                          Expanded(
                            child: Column(
                              children: [
                                Text('Social Media Links',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white)),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconWithLabel(
                                      icon: FontAwesomeIcons.facebook,
                                      label: 'Facebook',
                                      color: Colors.white,
                                    ),
                                    SizedBox(width: 10),
                                    IconWithLabel(
                                      icon: FontAwesomeIcons.instagram,
                                      label: 'Instagram',
                                      color: Colors.white,
                                    ),
                                    SizedBox(width: 10),
                                    IconWithLabel(
                                      icon: FontAwesomeIcons.twitter,
                                      label: 'Twitter',
                                      color: Colors.white,
                                    ),
                                    SizedBox(width: 10),
                                    IconWithLabel(
                                      icon: FontAwesomeIcons.youtube,
                                      label: 'YouTube',
                                      color: Colors.white,
                                    ),
                                    SizedBox(width: 10),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class IconWithLabel extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const IconWithLabel({
    Key? key,
    required this.icon,
    required this.label,
    this.color = Colors.black, // Default color is black
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: color),
        Text(label, style: TextStyle(fontSize: 10, color: color)),
      ],
    );
  }
}

class ImageGrid extends StatelessWidget {
  const ImageGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Business()),
                  );
                },
                child: Image.asset('assets/images/BI.png',
                    width: 150, height: 150),
              ),
              GestureDetector(
                onTap: () {
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Housing()),
                    );
                  }
                },
                child: Image.asset('assets/images/HP.png',
                    width: 150, height: 150),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Community()),
                  );
                },
                child: Image.asset('assets/images/CD.png',
                    width: 150, height: 150),
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Employment()),
                  );
                },
                child: Image.asset('assets/images/ES.png',
                    width: 150, height: 150),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Land()),
                  );
                },
                child: Image.asset('assets/images/LM1.png',
                    width: 150, height: 150),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Water()),
                  );
                },
                child: Image.asset('assets/images/WD1.png',
                    width: 150, height: 150),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
