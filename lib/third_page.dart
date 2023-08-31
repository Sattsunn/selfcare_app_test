import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  get selectedIndex => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('3'),
        ),
        body: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  selected: selectedIndex == index ? true : false,
                  selectedTileColor: Colors.pink.withOpacity(0.2),
                  onTap: () {
                    setState(() {});
                  },
                  title: Text('$index'),
                ),
              );
            }));
  }

  void setState(Null Function() param0) {}
}
