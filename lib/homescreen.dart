import 'dart:html';

import 'package:flutter/material.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  late TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: 72,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: 24,
                          height: 24,
                          margin: EdgeInsets.fromLTRB(0, 26, 69, 21),
                          child: Image.asset('assets/images/Home.png'),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: 24,
                          height: 24,
                          margin: EdgeInsets.fromLTRB(36, 26, 69, 21),
                          child: Image.asset('assets/images/pdf.png'),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: 24,
                          height: 24,
                          margin: EdgeInsets.fromLTRB(36, 26, 69, 21),
                          child: Image.asset('assets/images/Notification.png'),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: 24,
                          height: 24,
                          margin: EdgeInsets.fromLTRB(36, 26, 69, 21),
                          child: Image.asset('assets/images/Menu.png'),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 210,
                  margin: EdgeInsets.fromLTRB(15, 16, 16, 16),
                  padding: EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello Ashfak',
                        style: TextStyle(
                          color: Color.fromRGBO(102, 108, 137, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 10,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'What you are looking for today',
                        style: TextStyle(
                          color: Color.fromRGBO(23, 43, 77, 1),
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 10,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(16),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            TextField(
                              controller: _textEditingController,
                              decoration: InputDecoration(
                                labelText: 'Search what you need...',
                                hintText: 'Enter your text',
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(252, 252, 252, 1),
                                    width: 2.0,
                                    style: BorderStyle.solid,
                                  ),
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 9.0,
                                  horizontal: 13.0,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              right: 0,
                              child: ElevatedButton(
                                onPressed: () {
                                  String enteredText =
                                      _textEditingController.text;
                                  // Handle button tap
                                  print('Button tapped: $enteredText');
                                },
                                child: Icon(Icons.message),
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(12.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(15, 16, 16, 15),
                              padding: EdgeInsets.all(15),
                              child: TextButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white),
                                  side: MaterialStateProperty.all<BorderSide>(
                                    BorderSide(color: Colors.white),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/ac.png',
                                      width: 108,
                                      height: 108,
                                    ),
                                    SizedBox(
                                        height:
                                            8), // Adjust the spacing between the image and text
                                    Text(
                                      'Ac technician',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(15, 16, 16, 15),
                              padding: EdgeInsets.all(15),
                              child: TextButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white),
                                  side: MaterialStateProperty.all<BorderSide>(
                                    BorderSide(color: Colors.white),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/dryer.png',
                                      width: 108,
                                      height: 108,
                                    ),
                                    SizedBox(
                                        height:
                                            8), // Adjust the spacing between the image and text
                                    Text(
                                      'dryer',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(15, 16, 16, 15),
                              padding: EdgeInsets.all(15),
                              child: TextButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white),
                                  side: MaterialStateProperty.all<BorderSide>(
                                    BorderSide(color: Colors.white),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/appaliance.png',
                                      width: 108,
                                      height: 108,
                                    ),
                                    SizedBox(
                                        height:
                                            8), // Adjust the spacing between the image and text
                                    Text(
                                      'Appliance',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(15, 16, 16, 15),
                              padding: EdgeInsets.all(15),
                              child: TextButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white),
                                  side: MaterialStateProperty.all<BorderSide>(
                                    BorderSide(color: Colors.white),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/arrow.png',
                                      width: 108,
                                      height: 108,
                                    ),
                                    SizedBox(
                                        height:
                                            8), // Adjust the spacing between the image and text
                                    Text(
                                      'See More',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Card(
                        child: Container(
                          width: 258,
                          height: 220,
                          margin: EdgeInsets.all(16),
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromRGBO(234, 246, 239, 1),
                          ),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(16, 25, 10, 12),
                                child: Row(
                                  children: [
                                    Text(
                                      'Offer AC Service',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Icon(
                                      Icons.info,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                '25% off',
                                style: TextStyle(
                                  fontSize: 48,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(26, 29, 31, 1),
                                ),
                              ),
                              SizedBox(height: 10),
                              ElevatedButton(
                                onPressed: () {
                                  // Add your button functionality here
                                },
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                ),
                                child: Text(
                                  'Click me',
                                  style: TextStyle(
                                    color: Color.fromRGBO(106, 155, 126, 1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          width: 258,
                          height: 220,
                          margin: EdgeInsets.all(16),
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromRGBO(234, 246, 239, 1),
                          ),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(16, 25, 10, 12),
                                child: Row(
                                  children: [
                                    Text(
                                      'Offer AC Service',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Icon(
                                      Icons.info,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                '25% off',
                                style: TextStyle(
                                  fontSize: 48,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(26, 29, 31, 1),
                                ),
                              ),
                              SizedBox(height: 10),
                              ElevatedButton(
                                onPressed: () {
                                  // Add your button functionality here
                                },
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                ),
                                child: Text(
                                  'Click me',
                                  style: TextStyle(
                                    color: Color.fromRGBO(106, 155, 126, 1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          width: 258,
                          height: 220,
                          margin: EdgeInsets.all(16),
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromRGBO(234, 246, 239, 1),
                          ),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(16, 25, 10, 12),
                                child: Row(
                                  children: [
                                    Text(
                                      'Offer AC Service',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Icon(
                                      Icons.info,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                '25% off',
                                style: TextStyle(
                                  fontSize: 48,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(26, 29, 31, 1),
                                ),
                              ),
                              SizedBox(height: 10),
                              ElevatedButton(
                                onPressed: () {
                                  // Add your button functionality here
                                },
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                ),
                                child: Text(
                                  'Click me',
                                  style: TextStyle(
                                    color: Color.fromRGBO(106, 155, 126, 1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          width: 258,
                          height: 220,
                          margin: EdgeInsets.all(16),
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromRGBO(234, 246, 239, 1),
                          ),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(16, 25, 10, 12),
                                child: Row(
                                  children: [
                                    Text(
                                      'Offer AC Service',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Icon(
                                      Icons.info,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                '25% off',
                                style: TextStyle(
                                  fontSize: 48,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(26, 29, 31, 1),
                                ),
                              ),
                              SizedBox(height: 10),
                              ElevatedButton(
                                onPressed: () {
                                  // Add your button functionality here
                                },
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                ),
                                child: Text(
                                  'Click me',
                                  style: TextStyle(
                                    color: Color.fromRGBO(106, 155, 126, 1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Card(
                        child: Container(
                          width: 258,
                          height: 220,
                          margin: EdgeInsets.all(16),
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromRGBO(234, 246, 239, 1),
                          ),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(16, 25, 10, 12),
                                child: Row(
                                  children: [
                                    Text(
                                      'Offer AC Service',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Icon(
                                      Icons.info,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                '25% off',
                                style: TextStyle(
                                  fontSize: 48,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(26, 29, 31, 1),
                                ),
                              ),
                              SizedBox(height: 10),
                              ElevatedButton(
                                onPressed: () {
                                  // Add your button functionality here
                                },
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                ),
                                child: Text(
                                  'Click me',
                                  style: TextStyle(
                                    color: Color.fromRGBO(106, 155, 126, 1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
