import 'package:flutter/material.dart';

import './widgets/user_transactions.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Finance App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Finance App'),
        ),
        body: SingleChildScrollView(
                  child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                width: double.infinity,
                child: Card(
                  color: Colors.blue,
                  child: Text('Chart!'),
                  elevation: 5,
                ),
              ),
              UserTransactions(),
            ],
          ),
        ),);
  }
}
