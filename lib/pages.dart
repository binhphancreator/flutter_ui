import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page1')),
      body: Center(
        child: InkWell(
          onTap: () => Navigator.pushNamed(context, 'page2'),
          child: Text('Go to Page2'),
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: Text('Page2')));
}
