import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_medha/page_2.dart';

class Mypage3 extends StatefulWidget {
  const Mypage3({super.key});

  @override
  State<Mypage3> createState() => _Mypage3State();
}

class _Mypage3State extends State<Mypage3> {
  bool checked = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Mypage2()),
              );
            },
          ),
          backgroundColor: Colors.teal.shade700,
          title: Row(
            children: [
              Icon(Icons.book),
              Text(
                'Story Generator',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  labelText: 'Enter an adjective',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  labelText: 'Enter a noun',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Checkbox(
                      value: checked,
                      activeColor: Colors.teal.shade700,
                      onChanged: (bool? value) {
                        setState(() {
                          checked = value!;
                        });
                      }),
                  Text('I agree to the terms of service')
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
