import 'package:expenses/components/transaction_form.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/transaction_form.dart';
import 'components/transaction_list.dart';
import 'models/transaction.dart';


main() => runApp(const ExpensesApp());

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Despesas Pessoais',
      home:MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

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

  _addTransaction(String title, double value){
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(), 
      title: title, 
      value: value, 
      date: DateTime.now()
    );

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  _openTransactionFormModal(BuildContext context){
    showModalBottomSheet(
      context: context, 
      builder: (ctx){
        return TransactionForm(_addTransaction);  
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Despesas Pessoais',
          style: GoogleFonts.play(
            fontWeight: FontWeight.bold
          )
          ),
        backgroundColor: Colors.purple,
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => _openTransactionFormModal(context),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              child: const Card(
                 color: Colors.purple,
                 child: Text('Gráfico'),
                 elevation: 5,
               ),
            ),
            TransactionList(_transactions),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _openTransactionFormModal(context),
        backgroundColor: Colors.purple,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}