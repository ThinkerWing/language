import 'package:language/store/counter/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CounterPage extends StatelessWidget {
  final Counter counter = Counter();

  CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter and MobX by think'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Counter',
                style: TextStyle(fontSize: 30.0),
              ),
              // const Text(
              //   '0',
              //   style: TextStyle(fontSize: 42.0),
              // ),
              // 这里先不用Text而是包裹一个新的widget，然后这里需要一个observer widget
              // 它不是可以直接使用的，因此我们需要导入它
              Observer(
                  builder: (_) => Text(
                        '${counter.value}',
                        style: const TextStyle(fontSize: 42.0),
                      )),
              // 现在我们有了Observe 和 builder，它随时给我们的Text一个最新的值
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton.icon(
                    icon: const Icon(Icons.add),
                    label: const Text('Add'),
                    // onPressed 回调可以用来调用counter.increment
                    // onPressed: () {},
                    onPressed: counter.increment,
                  ),
                  TextButton.icon(
                    icon: const Icon(Icons.remove),
                    label: const Text('Remove'),
                    onPressed: counter.decrement,
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
