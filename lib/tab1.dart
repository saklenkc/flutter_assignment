import 'package:assigment/page2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Tab1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Get.to(() => Page2());
              },
              child: Text('Open Page 2'),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     Get.to(() => Page3());
            //   },
            //   child: Text('Open Page 3'),
            // ),
          ],
        ),
      ),
    );
  }
}

class Tab2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tab 2'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _openPage3(context);
          },
          child: Text('Open Page 3'),
        ),
      ),
    );
  }

  void _openPage3(BuildContext context) {
    Navigator.of(context).push(PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => Page3(),
      opaque: false, // This makes sure the underlying screen is visible
    ));
  }
}

class Tab3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tab 3'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.to(() => Tab2Page());
          },
          child: Text('Go to Tab 2'),
        ),
      ),
    );
  }
}
