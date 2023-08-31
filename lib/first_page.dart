import 'package:flutter/material.dart';
import 'package:selfcare_app_test/second_page.dart';

class FirstPage extends StatelessWidget {
  String nameText = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('メンタルケア'),
        ),
        body: Center(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  TextField(
                      onChanged: (text) {
                        nameText = text;
                      },
                      obscureText: false,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      )),
                  ElevatedButton(
                    onPressed: () {
                      //ボタンをしたら遷移のコード
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecondPage(nameText)));
                    },
                    child: const Text('button'),
                  ),
                ]))));
  }
}
