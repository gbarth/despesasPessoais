import 'package:flutter/material.dart';
import 'transaction_form.dart';
import 'transaction_list.dart';
import '../models/transaction.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({ Key? key }) : super(key: key);

  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {

  final _transactions = [
    Transaction (
      id: 't1',
      title: 'Tênis de corrida',
      value: 299.90,
      date: DateTime.now(),
    ),
    Transaction (
      id: 't2',
      title: 'Conta de Luz',
      value: 176.70,
      date: DateTime.now(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget> [
        TransactionList(_transactions),
        TransactionForm()
      ],
    );
  }
}
      