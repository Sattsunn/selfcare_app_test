import 'package:flutter/material.dart';

class NoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('お疲れ様'),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'そんな日もあるよね！',
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
            ],
          ),
        ));
  }
}
