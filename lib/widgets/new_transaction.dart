import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final inputController = TextEditingController();
  final amountController = TextEditingController();
  final Function addTransaction;

  NewTransaction(this.addTransaction);

  @override
  Widget build(BuildContext context) {
    return Card(
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(labelText: 'Title'),
                      controller: inputController,
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Amount'),
                      controller: amountController,
                    ),
                    FlatButton(
                      child: Text('Add Transaction'),
                      textColor: Colors.purple,
                      onPressed: () {
                        addTransaction(inputController.text, double.parse(amountController.text));
                      },
                    )
                  ],
                ),
              ),
            );
  }
}