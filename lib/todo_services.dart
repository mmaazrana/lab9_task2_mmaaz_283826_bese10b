import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:lab9_task2_mmaaz_283826_bese10b/todo.dart';

class TodoService {
  Future<List<Todo>> fetchTodo() async {
    String stringUrl = 'https://jsonplaceholder.typicode.com/todos';
    final response = await http.get(Uri.parse(stringUrl));
    List<Todo> todoList = [];
    if (response.statusCode == 200) {
      String body = response.body;
      final jsonResponse = jsonDecode(body) as List;
      jsonResponse.forEach((element) {
        todoList.add(Todo.fromJson(element));
      });
      return todoList;
    } else {
      return todoList;
    }
  }
}
