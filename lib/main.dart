import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(const MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote('Be yourself, everyone else is already taken', 'Oscar Wilde'),
    Quote('I have nothing to declare except my genius', 'Oscar Wilde'),
    Quote('The truth is rarely pure and never simple', 'Oscar Wilde'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: const Text('Awesome Quotes'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          children: quotes.map((quote) {
            return Text('${quote.text} - ${quote.author}');
          }).toList(),
        )
    );
  }
}
