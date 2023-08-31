import 'package:flutter/material.dart';
import 'package:selfcare_app_test/feel_page.dart';
import 'package:selfcare_app_test/no_page.dart';
import 'package:selfcare_app_test/third_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('メンタルケア'),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ThirdPage()));
                },
                icon: const Icon(Icons.favorite),
                color: Colors.pink),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('今日は記録する？'),
              //yes
              ElevatedButton(
                onPressed: () {
                  //ボタンをしたら遷移のコード
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FeelPage()));
                },
                child: const Text('yes'),
              ),
              //no
              ElevatedButton(
                onPressed: () {
                  //ボタンをしたら遷移のコード
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NoPage()));
                },
                child: const Text('no'),
              ),
            ],
          ),
        ));
  }
}
