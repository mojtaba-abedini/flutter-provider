import 'package:flutter/material.dart';

class MyTextFeild extends StatelessWidget {
   MyTextFeild({Key? key,required this.onChangeFunc, required this.title}) : super(key: key);

  late Function onChangeFunc;
  late String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600,
      child: TextField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: title,
        ),
        onChanged: (value) => onChangeFunc(value),
      ),
    );
  }
}
