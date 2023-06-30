import 'dart:convert';

import 'package:flutter/material.dart';
import 'ScreenThree.dart';
import 'package:http/http.dart' as http;

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Second Screen")),
        body: ElevatedButton(
          onPressed: () async {
            var url = Uri.parse("https://reqres.in/api/users");

            var response = await http.get(url);
            // print("Reponse status: ${response.statusCode}");
            // print("Response body:${response.body}");
            var data = jsonDecode(response.body);
            String fname = data["data"][0]["first_name"];
            String lname = data["data"][0]["last_name"];
            String pic = data["data"][0]["avatar"];

            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ScreenThree(
                    first_name: fname, last_name: lname, avatar: 'pic'),
              ),
            );
          },
          child: Text("Go to Next Screen"),
        ),
      ),
    );
  }
}
