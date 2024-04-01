import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text('Page 2',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.to(() => Page3());
          },
          child: Text('Open Page 3'),
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  final String jsonData = '''
    {
      "page3": [
        "Samosas.",
        "Chaat.",
        "Pani Puri.",
        "Bhelpuri.",
        "Kachori.",
        "Chole Bhature.",
        "Matar Kulcha.",
        "Dosa.",
        "Milk.",
        "Bread.",
        "Butter.",
        "Cheese.",
        "Yoghurt.",
        "Sandwich.",
        "Pancake.",
        "Pie.",
        "Cake.",
        "Lemon.",
        "Pizza.",
        "Carrots.",
        "Grapes.",
        "Eggs.",
        "Oats.",
        "Pancakes.",
        "Crepes.",
        "Waffles.",
        "Idli."
      ]
    }
  ''';

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data = jsonDecode(jsonData);
    List<dynamic> items = data['page3'];

    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Text('Page 3',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          iconTheme: IconThemeData(color: Colors.white)),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(items[index]),
            onTap: () {
              // Implement item tap functionality if needed
            },
          );
        },
      ),
    );
  }
}
