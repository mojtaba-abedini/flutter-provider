import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testes/text_feild.dart';

import 'counter_model.dart';

class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterModel = Provider.of<CounterModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Demo'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            MyTextFeild(
                title: 'Name',
                onChangeFunc: (value) => counterModel.readName(value)),
            const SizedBox(
              height: 30,
            ),
            MyTextFeild(
                title: 'Family',
                onChangeFunc: (value) => counterModel.readFamily(value)),
            const SizedBox(
              height: 80,
            ),
            Text(
              'Name is: ${counterModel.getName()}',
              style: const TextStyle(fontSize: 24.0),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Family is: ${counterModel.getFamily()}',
              style: const TextStyle(fontSize: 24.0),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Counter Value is: ${counterModel.getCounter()}',
              style: const TextStyle(fontSize: 24.0),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () => counterModel.incrementCounter(),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 30),
          FloatingActionButton(
            onPressed: () => counterModel.decrementCounter(),
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
