import 'components/transaction_user.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          TransactionUser(),
        ],
      ),
    );
  }
}