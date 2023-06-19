import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_medha/main.dart';
import 'package:flutter_application_medha/page_3.dart';

class Mypage2 extends StatefulWidget {
  const Mypage2({super.key});

  @override
  State<Mypage2> createState() => _Mypage2State();
}

class _Mypage2State extends State<Mypage2> {
  bool checked = false;
  bool is_on = false;
  double curr = 20;
  final now = DateTime.now();

  //var currentTime = DateTime(now.year, now.month, now.day);
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
                MaterialPageRoute(builder: (context) => MyApp()),
              );
            },
          ),
          backgroundColor: Colors.teal.shade700,
          title: Text(
            'Form Widget',
            style: TextStyle(color: Colors.white),
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
                    labelText: 'Title',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    labelText: 'Description',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Date',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(now.toString().substring(0, 10))
                        ],
                      ),
                      GestureDetector(
                        child: Text(
                          'Edit',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Mypage3()));
                        },
                      )
                    ]),
              ),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.,
                  children: [
                    Text('Estimated value',
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('\$' + curr.toString()),
                  Row(
                    children: [
                      Slider(
                          value: curr,
                          min: 0,
                          max: 2000000,
                          activeColor: Colors.teal.shade700,
                          label: curr.round().toString(),
                          onChanged: (double value) {
                            setState(() {
                              curr = value;
                            });
                          }),
                    ],
                  ),
                ],
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
                    Text(
                      'Brushed Teeth',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Enable feature',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Switch(
                        value: is_on,
                        activeColor: Colors.teal.shade700,
                        onChanged: (bool? value) {
                          setState(() {
                            is_on = value!;
                          });
                        })
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
