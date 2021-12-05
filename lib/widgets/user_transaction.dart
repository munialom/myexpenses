import 'package:flutter/material.dart';
import 'package:myexpenses/models/transaction.dart';
import 'package:myexpenses/widgets/transaction_list.dart';

import 'new_transaction.dart';

class UserTransactions extends StatefulWidget {
  UserTransactions({Key? key}) : super(key: key);

  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _transactions = [
    Transaction(
        id: 'T1', title: 'Shoes', amount: 10000.00, date: DateTime.now()),
    Transaction(id: 'T2', title: 'Books', amount: 800.00, date: DateTime.now()),
    Transaction(
        id: 'T3', title: 'Laptop', amount: 1000.00, date: DateTime.now())
  ];

  void _addNewTransaction(String txtitle, double txamount) {
    final newTX = Transaction(
        id: DateTime.now().toString(),
        title: txtitle,
        amount: txamount,
        date: DateTime.now());

    setState(() {
      _transactions.add(newTX);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      NewTransation(_addNewTransaction),
      TransactionList(_transactions)
    ]);
  }
}
