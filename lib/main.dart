import 'package:flutter/material.dart';
import 'package:flutter_application_medha/page_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {},
        ),
        backgroundColor: Colors.teal.shade700,
        title:
            const Text('Sign in Form', style: TextStyle(color: Colors.white)),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  labelText: 'Email',
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
                  labelText: 'Password',
                  hintText: 'Enter Your Name',
                ),
              ),
            ),
            GestureDetector(
              child: Center(child: Text('Sign In')),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Mypage2()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

//class RaisedButton {}
