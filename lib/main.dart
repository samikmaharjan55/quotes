import 'package:flutter/material.dart';
import 'package:quotes_app/quote.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuotesList(),
    ));

class QuotesList extends StatefulWidget {
  const QuotesList({Key? key}) : super(key: key);

  @override
  _QuotesListState createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {
  List<Quote> quotes = [
    Quote(
        author: 'Oscar Wilde',
        text: 'Be yourself; everyone else is already taken'),
    Quote(
        author: 'Oscar Wilde',
        text: 'Be yourself; everyone else is already taken'),
    Quote(
        author: 'Oscar Wilde',
        text: 'The truth is rarely pure and never simple'),
  ];

  Widget quoteTemplate(quote) {
    return QuoteCard(quote: quote);
  }

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
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}

class QuoteCard extends StatelessWidget {
  final Quote quote;
  QuoteCard({required this.quote});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(
              height: 6.0,
            ),
            Text(
              quote.author,
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 14.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
