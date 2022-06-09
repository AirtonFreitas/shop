import 'package:flutter/material.dart';

import '../providers/counter.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('exemplo contador'),
      ),
      body: Column(
        children: [
          IconButton(
            onPressed: (){
              print(CounterProvider.of(context));
          },
            icon: Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
