import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

main() => runApp(const ExpensesApp());

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Despesas Pessoais',
      home:MyHomePage()
    );
  }
}

class MyHomePage extends StatelessWidget {
  final _transactions = [
    Transaction (
      id: 't1',
      title: 'Novo tênis de corrida',
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
          style: GoogleFonts.playfairDisplay()
          ),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            child: const Card(
               color: Colors.purple,
               child: Text('Gráfico'),
               elevation: 5,
             ),
          ),   
          const Card(
            child: Text('Lista de Transações'),
          )
        ],
      ),
    );
  }
}