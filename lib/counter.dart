import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:scoped_model/main.dart';

class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final rootWidgetState = MyInheritedWidget.of(context)!.myState;
    return Card(
      margin: EdgeInsets.all(4.0).copyWith(bottom: 32),
      color: Colors.yellowAccent,
      child: Column(
        children: <Widget>[
          Text('(Children Widget)'),
          Text('(${rootWidgetState.counterValue})', style: Theme.of(context).textTheme.headline4),
          ButtonBar(
            children: <Widget>[
              IconButton(
                  onPressed: () => rootWidgetState.decrementCounter(),
                  icon: Icon(Icons.remove),
                  color: Colors.red
              ),
              IconButton(
                onPressed: () => rootWidgetState.incrementCounter(),
                icon: Icon(Icons.add),
                color: Colors.green,
              ),
            ],
          )
        ],
      ),
    );
  }
}