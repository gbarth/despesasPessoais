import 'package:expenses/components/transaction_list.dart';
import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

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

class MyHomePage extends StatelessWidget {
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
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Despesas Pessoais',
          style: GoogleFonts.play(
            fontWeight: FontWeight.bold
          )
          ),
        backgroundColor: Colors.purple
      ),
      body: Column(
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
          Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: const <Widget> [
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Título'
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Valor (R\$)'
                    ),
                  ),
                  ElevatedButton(
                    child: Text('Nova Transação'),
                    onPressed: null,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}