import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:website/categories/business.dart';
import 'package:website/categories/community.dart';
import 'package:website/categories/employment.dart';
import 'package:website/categories/housing.dart';
import 'package:website/categories/land.dart';
import 'package:website/categories/water.dart';
import 'package:website/home/news_and_updates.dart';
import 'package:website/home/resources_and_tools.dart';

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
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                          text: 'Welcome to ',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'USA INCENTIVES ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text:
                                  ', your ultimate guide to unlocking the vast array of incentives available in the United States! Whether you\'re a business owner, entrepreneur, student, or homeowner, discover a wealth of opportunities designed to support your goals and aspirations. Explore various programs, grants, tax credits, and resources tailored to empower individuals and organizations across every sector. Let\'s navigate the landscape of incentives together and pave the way for success in the land of opportunity',
                            ),
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
                                  255, 92, 0, 220), // Background color
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
                                color: Colors
                                    .white, // White text for better contrast
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 60),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 0, 4, 239),
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
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          const SizedBox(height: 40),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 47, 0, 255),
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
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          const SizedBox(height: 40),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 0, 29, 243),
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
                                color: Colors.white,
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
                      borderRadius: BorderRadius.circular(
                          15.0), // Increased border radius for a smoother look
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
                                  255, 92, 0, 220), // Background color
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
                                color: Colors
                                    .white, // White text for better contrast
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 60),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 0, 4, 239),
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
                              'Calculator\'s and Tools',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          const SizedBox(height: 40),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 47, 0, 255),
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
                              'FAQ\'s',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          const SizedBox(height: 40),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 0, 29, 243),
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
                              'Glossary',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                // TextButton(
                //   onPressed: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //           builder: (context) => const NewsAndUpdates()),
                //     );
                //   },
                //   child: const Text(
                //     'News and Updates',
                //     textAlign: TextAlign.left,
                //     style: TextStyle(fontSize: 30),
                //   ),
                // ),
                // const SizedBox(height: 20),
                // Padding(
                //   padding: const EdgeInsets.only(left: 40.0),
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       TextButton(
                //         onPressed: () {
                //           Navigator.push(
                //             context,
                //             MaterialPageRoute(
                //                 builder: (context) => const NewsAndUpdates()),
                //           );
                //         },
                //         child: const Text(
                //           'Latest Announcements',
                //           style: TextStyle(fontSize: 15),
                //         ),
                //       ),
                //       const SizedBox(height: 10),
                //       TextButton(
                //         onPressed: () {
                //           Navigator.push(
                //             context,
                //             MaterialPageRoute(
                //                 builder: (context) => const NewsAndUpdates()),
                //           );
                //         },
                //         child: const Text(
                //           'Success Stories',
                //           style: TextStyle(fontSize: 15),
                //         ),
                //       ),
                //       const SizedBox(height: 10),
                //       TextButton(
                //         onPressed: () {
                //           Navigator.push(
                //             context,
                //             MaterialPageRoute(
                //                 builder: (context) => const NewsAndUpdates()),
                //           );
                //         },
                //         child: const Text(
                //           'Events and Workshops',
                //           style: TextStyle(fontSize: 15),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                const SizedBox(height: 50),
                // TextButton(
                //   onPressed: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //           builder: (context) => const ResourcesAndTools()),
                //     );
                //   },
                //   child: const Text(
                //     'Resources and Tools',
                //     textAlign: TextAlign.left,
                //     style: TextStyle(fontSize: 30),
                //   ),
                // ),
                // const SizedBox(height: 20),
                // Column(
                //   children: [
                //     TextButton(
                //       onPressed: () {
                //         Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //               builder: (context) => const ResourcesAndTools()),
                //         );
                //       },
                //       child: const Text(
                //         'Calculators and Tools',
                //         style: TextStyle(fontSize: 15),
                //       ),
                //     ),
                //     const SizedBox(height: 10),
                //     TextButton(
                //       onPressed: () {
                //         Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //               builder: (context) => const ResourcesAndTools()),
                //         );
                //       },
                //       child: const Text(
                //         'FAQ\'s',
                //         style: TextStyle(fontSize: 15),
                //       ),
                //     ),
                //     const SizedBox(height: 10),
                //     TextButton(
                //       onPressed: () {
                //         Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //               builder: (context) => const ResourcesAndTools()),
                //         );
                //       },
                //       child: const Text(
                //         'Glossary',
                //         style: TextStyle(fontSize: 15),
                //       ),
                //     ),
                //   ],
                // ),
                const SizedBox(height: 50),
                const Text(
                  'Contact Us',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30),
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: const [
                          Text(
                            'Contact Information',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Phone: xxx-xxx-xxxx',
                            style: TextStyle(fontSize: 10),
                          ),
                          Text(
                            'Email: example@example.com',
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 50),
                    Expanded(
                      child: Column(
                        children: const [
                          Text(
                            'Feedback Form',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Provide your valuable feedback',
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 50),
                    Expanded(
                      child: Column(
                        children: [
                          const Text('Social Media Links',
                              style: TextStyle(fontSize: 20)),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              IconWithLabel(
                                icon: FontAwesomeIcons.facebook,
                                label: 'Facebook',
                              ),
                              SizedBox(width: 10),
                              IconWithLabel(
                                icon: FontAwesomeIcons.instagram,
                                label: 'Instagram',
                              ),
                              SizedBox(width: 10),
                              IconWithLabel(
                                icon: FontAwesomeIcons.twitter,
                                label: 'Twitter',
                              ),
                              SizedBox(width: 10),
                              IconWithLabel(
                                icon: FontAwesomeIcons.youtube,
                                label: 'YouTube',
                              ),
                              SizedBox(width: 10),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 200),
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

  const IconWithLabel({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon),
        Text(label, style: const TextStyle(fontSize: 10)),
      ],
    );
  }
}

class ImageGrid extends StatelessWidget {
  const ImageGrid({super.key});

  // void _onImagePressed(BuildContext context, String imageName) {
  //   ScaffoldMessenger.of(context).showSnackBar(
  //     SnackBar(content: Text('$imageName pressed')),
  //   );
  // }

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
                    MaterialPageRoute(builder: (context) => const Community()),
                  );
                },
                child: Image.asset('assets/images/CD.png',
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
            ],
          ),
        ],
      ),
    );
  }
}
