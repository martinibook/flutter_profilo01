// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Page',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Row(
            children: const [
              Icon(Icons.business_center),
              SizedBox(width: 5.0),
              Text('My Card'),
            ],
          ),
        ),
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/sfondo2.jpg"))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage("assets/images/icon-256x256.png"),
              ),
              SizedBox(height: 10),
              Text('Roberto Martini',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                            color: Colors.black,
                            offset: Offset.zero,
                            blurRadius: 3.0)
                      ]))
            ],
          ),
        ),
      ),
    );
  }
}
