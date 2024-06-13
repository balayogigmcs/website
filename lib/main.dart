import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:website/my_home_page.dart'; // Assuming this is your home page widget

 Future main() async {
   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp(
     options: const FirebaseOptions(
      apiKey: "AIzaSyDvlzPYLxJmnYg66lHl4XY6_6bvo0VvLA8",
      projectId: "website-c30e4",
      messagingSenderId: "1092137814775",
      appId: "1:1092137814775:web:0f72a07b1db34b2a3121f2"
     ),
   );

   runApp(MyApp());
 }


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
