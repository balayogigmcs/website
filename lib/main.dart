import 'package:flutter/material.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:website/my_home_page.dart'; // Assuming this is your home page widget

// Future main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     options: const FirebaseOptions(
//       apiKey: "AIzaSyBCCBxNo4BFvPbbBMQP-AoFihlMblCUR_8",
//       appId: "1:994624740239:web:b6ad44a86ddbe86edf89fa",
//       messagingSenderId: "994624740239",
//       projectId: "incentives-e3e78",
//     ),
//   );

//   runApp(MyApp());
// }

void main(){
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
