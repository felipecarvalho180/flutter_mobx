import 'package:mobx/mobx.dart';
import 'package:mobx_example/models/todo_model.dart';
part 'todo_store.g.dart';

class TodoStore = _TodoStore with _$TodoStore;

abstract class _TodoStore with Store {
  @observable
  ObservableList<Todo> todos = ObservableList<Todo>();

  @action
  void add(Todo todo) {
    todos.add(todo);
  }
}
