import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myexpenses/models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> usertransactions;
  TransactionList(this.usertransactions) {}

  @override
  Widget build(BuildContext context) {
    return Column(
        children: usertransactions.map((tx) {
      return Card(
        child: Row(
          children: [
            Container(
              child: Text(
                '\$${tx.amount}',
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                    color: Colors.white),
              ),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.purple),
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(18),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tx.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  DateFormat.yMMMd().format(tx.date),
                  style: const TextStyle(color: Colors.teal),
                )
              ],
            )
          ],
        ),
      );
    }).toList());
  }
}
