import 'package:flutter/material.dart';

class ScreenThree extends StatelessWidget {
  String first_name;
  String last_name;
  String avatar;

  ScreenThree({
    Key? key,
    required this.first_name,
    required this.last_name,
    required this.avatar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("third screen"),
        ),
        body: ListView(
          padding: const EdgeInsets.all(8.0),
          children: [
            Card(
              child: ListTile(
                title: Text(first_name),
              ),
            ),
            Card(
              child: ListTile(
                title: Text(last_name),
              ),
            ),
            Card(
              child: ListTile(
                title: Text(avatar),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
