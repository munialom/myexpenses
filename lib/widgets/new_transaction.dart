import 'package:flutter/material.dart';

class NewTransation extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function addTx;

  NewTransation(this.addTx, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'Title'),
              controller: titleController,
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Amount'),
              controller: amountController,
            ),
            FlatButton(
                textColor: Colors.purple,
                onPressed: () {
                  addTx(titleController.text,
                      double.parse(amountController.text));
                },
                child: const Text('Add New Transaction'))
          ],
        ),
      ),
    );
  }
}
