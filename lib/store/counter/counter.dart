import 'package:mobx/mobx.dart';
 
// This is our generated file (we'll see this soon!)
part 'counter.g.dart';
 
// We expose this to be used throughout our project
class Counter = _Counter with _$Counter;
 
// Our store class
abstract class _Counter with Store {
  @observable
  // 定义变量，它是一个能够被观察到int类型的count
  int value = 1;
 
  @action
  void increment() {
    value++;
  }
 
  @action
  void decrement() {
    value--;
  }
}