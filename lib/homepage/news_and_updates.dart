import 'package:flutter/material.dart';

class NewsAndUpdates extends StatelessWidget {
  const NewsAndUpdates({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
      body:const Center(child:  Text('News and Updates',style: TextStyle(fontSize: 30),)),
    );
  }
}
