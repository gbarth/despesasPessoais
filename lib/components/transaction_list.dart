import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';


class TransactionList extends StatelessWidget {

  final List<Transaction> transactions; 
  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Column(
            children: transactions.map((tr) {
            return Card(
              child: Row(
                children: <Widget> [
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.purple,
                        width: 2,
                      ) 
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      'R\$ ${tr.value.toStringAsFixed(2)}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget> [
                      Text(
                        tr.title,
                        style: GoogleFonts.play(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                        ),
                      Text(
                        DateFormat('d MMM y').format(tr.date),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[700],
                          fontSize: 12,
                        ),
                        ),
                    ],
                  )
                ],
              ),  
            );
            }).toList(),
          );
  }
}