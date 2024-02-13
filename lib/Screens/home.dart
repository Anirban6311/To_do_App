import 'package:flutter/material.dart';
import 'package:testapp/widgets/drawer_widget.dart';

import '../model/todo.dart';
import '../widgets/searchBox.dart';
import '../widgets/todo_item.dart';
import '../widgets/appBarWidget.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final todosList = ToDo.todoList();
  List<ToDo> _foundToDo = [];
  final _todoController = TextEditingController();

  @override
  void initState() {
    _foundToDo = todosList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("Images/blue-background.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBarWidget(),
        drawer: DrawerWidget(),
        body: Column(
          children: [
            SizedBox(height: 20),
            searchBox(),
            SizedBox(height: 40),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Things to check out!',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,

                ),
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    for (ToDo todo in _foundToDo)
                      ToDoItem(
                        todo: todo,
                        onToDoChanged: _handleToDoChange,
                        onDeleteItem: _deleteToDoItem,
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          color: Colors.transparent,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 20),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.blueGrey,
                        offset: Offset(0.0, 0.0),
                        blurRadius: 10.0,
                        spreadRadius: 0.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: _todoController,
                    decoration: InputDecoration(
                      hintText: 'Add new item',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                child: Text(
                  '+',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  _addToDoItem(_todoController.text);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.amberAccent,
                  minimumSize: Size(60, 60),
                  elevation: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleToDoChange(ToDo todo) {
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }

  void _deleteToDoItem(String id) {
    setState(() {
      todosList.removeWhere((item) => item.id == id);
    });
  }

  void _addToDoItem(String toDo) {
    setState(() {
      todosList.add(ToDo(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        todoText: toDo,
      ));
    });
    _todoController.clear();
  }
}
