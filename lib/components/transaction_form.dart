import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Card(
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
          );
  }
}