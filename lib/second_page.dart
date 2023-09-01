import 'package:flutter/material.dart';
import 'package:selfcare_app_test/third_page.dart';

class SecondPage extends StatelessWidget {
  SecondPage(this.name);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('2'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 50,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  //ボタンをしたら遷移のコード
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ThirdPage()));
                },
                child: const Text('button'),
              ),
            ],
          ),
        ));
  }
}
