import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:your_note/screens/widgets/custom_fab.dart';
import 'package:your_note/services/dbhelper/todo_helper.dart';

import '../models/db_models/todo_model.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final dbHelper = TodoDBHelper();
  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void _showFullScreenDialog(BuildContext context) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: OutlineInputBorder(),
            insetPadding: EdgeInsets.zero, // Remove default padding
            child: Container(
           width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  // Add your dialog content here
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Close'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Align(alignment: Alignment.bottomRight,child: CustomFAB(onPressed: (){})),
                  )
                ],
              ),
            ),
          );
        },
      );
    }
    return Scaffold(
      floatingActionButton: CustomFAB(
        onPressed: () {
          showModalBottomSheet<void>(
              isDismissible: true,
              showDragHandle: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20))),
              context: context,
              builder: (BuildContext context) {
                return Container(
                  height: MediaQuery.of(context).size.height * 0.30,
                  padding: EdgeInsets.only(left: 30,top: 30,right: 30),
                  child: Center(
                    child: ListView(
                      children: [
                        Align(alignment: Alignment.center,child: Text("What do you want to add?")),
                        const SizedBox(height: 20,),
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            )
                          ),
                          child: FilledButton.tonal(
                            style: ButtonStyle(
                              alignment: Alignment.center,
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(30.0),topLeft: Radius.circular(30.0),bottomRight:Radius.circular(10.0),bottomLeft: Radius.circular(10.0) ),
                                ),
                              ),
                            ),
                            onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: const Text('Add'),
                                      content: TextField(
                                        controller: textController,
                                        decoration: InputDecoration(
                                          hintText: 'Todo',
                                        ),
                                      ),
                                      actions: <Widget>[
                                        TextButton(
                                          child: const Text('Add'),
                                          onPressed: () async {
                                            if (textController.text.isNotEmpty) {
                                              Todo newTodo = Todo(
                                                id: DateTime.now().millisecondsSinceEpoch,
                                                title: textController.text,
                                              );
                                              await dbHelper.insertTodo(newTodo);
                                              textController.clear();
                                              dbHelper.getTodos();
                                              Get.back();
                                            }
                                          },
                                        ),
                                      ],
                                    );
                                  },
                                );
                            },
                            child: const Text('Todo'),
                          ),
                        ),
                        const SizedBox(height: 5,),
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              )
                          ),
                          child: FilledButton.tonal(
                            style: ButtonStyle(
                              alignment: Alignment.center,
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: const Text('Add'),
                                    content: TextField(
                                      controller: textController,
                                      decoration: InputDecoration(
                                        hintText: 'Todo',
                                      ),
                                    ),
                                    actions: <Widget>[
                                      TextButton(
                                        child: const Text('Add'),
                                        onPressed: () async {
                                          if (textController.text.isNotEmpty) {
                                            Todo newTodo = Todo(
                                              id: DateTime.now().millisecondsSinceEpoch,
                                              title: textController.text,
                                            );
                                            await dbHelper.insertTodo(newTodo);
                                            textController.clear();
                                            dbHelper.getTodos();
                                            Get.back();
                                          }
                                        },
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: const Text('Todo'),
                          ),
                        ),
                        const SizedBox(height: 5,),
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              )
                          ),
                          child: FilledButton.tonal(
                            style: ButtonStyle(
                              alignment: Alignment.center,
                              shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30.0),bottomRight: Radius.circular(30.0),topRight:Radius.circular(10.0),topLeft: Radius.circular(10.0) ),
                          ),
                        ),
                            ),

                            onPressed: () {

                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: const Text('Add'),
                                    content: TextField(
                                      controller: textController,
                                      decoration: InputDecoration(
                                        hintText: 'Todo',
                                      ),
                                    ),
                                    actions: <Widget>[
                                      TextButton(
                                        child: const Text('Add'),
                                        onPressed: () async {
                                          if (textController.text.isNotEmpty) {
                                            Todo newTodo = Todo(
                                              id: DateTime.now().millisecondsSinceEpoch,
                                              title: textController.text,
                                            );
                                            await dbHelper.insertTodo(newTodo);
                                            textController.clear();
                                            dbHelper.getTodos();
                                            Get.back();
                                          }
                                        },
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: const Text('Todo'),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              });
        },
      ),
      drawer: Drawer(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  // Important: Remove any padding from the ListView.
                  padding: EdgeInsets.only(top: 30),
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text("Todoify"),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.home,
                      ),
                      title: const Text('Home'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.train,
                      ),
                      title: const Text('Page 2'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
              // Spacer(), // <-- This will fill up any free-space
              // Everything from here down is bottom aligned in the drawer
              Divider(),
              ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
              ),
            ],
          )),
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.settings_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Todoify",
              ),
              const SizedBox(
                height: 20,
              ),
              Text("What's up "),
              const SizedBox(
                height: 15,
              ),
              Text("Your notes:"),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.20,
                decoration: BoxDecoration(
                    color: Colors.grey, borderRadius: BorderRadius.circular(20)),
              ),
              const SizedBox(
                height: 10,
              ),
              Text("Your todos:"),
              const SizedBox(
                height: 10,
              ),
              Obx(() {
                final List<Todo> todos = dbHelper.todos;
                if (todos.isEmpty) {
                  return InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Add'),
                            content: TextField(
                              controller: textController,
                              decoration: InputDecoration(
                                hintText: 'Todo',
                              ),
                            ),
                            actions: <Widget>[
                              TextButton(
                                child: const Text('Add'),
                                onPressed: () async {
                                  if (textController.text.isNotEmpty) {
                                    Todo newTodo = Todo(
                                      id: DateTime.now().millisecondsSinceEpoch,
                                      title: textController.text,
                                    );
                                    await dbHelper.insertTodo(newTodo);
                                    textController.clear();
                                    dbHelper.getTodos();
                                    Get.back();
                                  }
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.20,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(child: Text("Empty! Please create a todo")),
                    ),
                  );
                } else {
                  return ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: todos.length,
                    itemBuilder: (context, index) {
                      print("lenght: ${todos.length}");
                      final Todo todo = todos[index];
                      return ListTile(
                        title: Text(todo.title),
                        leading: Checkbox(
                          value: todo.isCompleted,
                          onChanged: (value) async {
                            todo.isCompleted = value ?? false;
                            await dbHelper.updateTodoStatus(todo);
                            dbHelper.getTodos();
                          },
                        ),
                        trailing: IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () async {
                            await dbHelper.deleteTodo(todo.id);
                            dbHelper.getTodos();
                          },
                        ),
                      );
                    },
                  );
                }
              }),
              const SizedBox(
                height: 10,
              ),
              Text("Your scheduled tasks:"),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: ()=> _showFullScreenDialog(context),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.20,
                  decoration: BoxDecoration(
                      color: Colors.grey, borderRadius: BorderRadius.circular(20)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
