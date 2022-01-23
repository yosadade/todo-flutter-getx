import 'package:flutter/material.dart';
import 'package:todo/models/todocard_model.dart';
import 'package:todo/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/widgets/todo_card.dart';

class DashbboardPage extends StatefulWidget {
  const DashbboardPage({Key? key}) : super(key: key);

  @override
  State<DashbboardPage> createState() => _DashbboardPageState();
}

class _DashbboardPageState extends State<DashbboardPage> {
  TextEditingController searchController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    Future<void> _displayTextInputDialog(BuildContext context) async {
      return showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              backgroundColor: backgroundColor1,
              title: Center(
                child: Text(
                  'what plans do you have today?',
                  style: primaryTextStyle.copyWith(
                      fontSize: 14, color: textColor2),
                ),
              ),
              content: Container(
                height: 50,
                width: 150,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                decoration: BoxDecoration(
                    color: backgroundColor2,
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: Expanded(
                      child: TextFormField(
                          controller: searchController,
                          decoration: InputDecoration.collapsed(
                              hintText: "Add to do",
                              hintStyle: primaryTextStyle.copyWith(
                                  fontSize: 14, fontWeight: light)))),
                ),
              ),
              actions: <Widget>[
                FlatButton(
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Text('CANCEL'),
                  onPressed: () {
                    setState(() {
                      Navigator.pop(context);
                    });
                  },
                ),
                FlatButton(
                  color: Colors.green,
                  textColor: Colors.white,
                  child: Text('OK'),
                  onPressed: () {
                    // setState(() {
                    //   codeDialog = valueText;
                    //   Navigator.pop(context);
                    // });
                  },
                ),
              ],
            );
          });
    }

    Widget searchBar() {
      return Row(children: [
        Container(
          margin: const EdgeInsets.all(24),
          height: 50,
          width: 280,
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          decoration: BoxDecoration(
              color: backgroundColor2, borderRadius: BorderRadius.circular(24)),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/search_icon.png',
                  width: 17,
                ),
                const SizedBox(width: 16),
                Expanded(
                    child: TextFormField(
                        controller: searchController,
                        decoration: InputDecoration.collapsed(
                            hintText: "Cari to do",
                            hintStyle: primaryTextStyle.copyWith(
                                fontSize: 14, fontWeight: light)))),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            _displayTextInputDialog(context);
          },
          child: Image.asset('assets/button_add.png', width: 47, height: 47),
        )
      ]);
    }

    todoList() {
      return Column(
        children: [
          TodoCard(
            TodoCardModel(id: 1, title: "Create todo app flutter getx"),
          ),
          TodoCard(
            TodoCardModel(id: 1, title: "Create todo app flutter getx"),
          ),
          TodoCard(
            TodoCardModel(id: 1, title: "Create todo app flutter getx"),
          ),
          TodoCard(
            TodoCardModel(id: 1, title: "Create todo app flutter getx"),
          ),
          TodoCard(
            TodoCardModel(id: 1, title: "Create todo app flutter getx"),
          ),
          TodoCard(
            TodoCardModel(id: 1, title: "Create todo app flutter getx"),
          ),
          TodoCard(
            TodoCardModel(id: 1, title: "Create todo app flutter getx"),
          ),
          TodoCard(
            TodoCardModel(id: 1, title: "Create todo app flutter getx"),
          ),
          TodoCard(
            TodoCardModel(id: 1, title: "Create todo app flutter getx"),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: ListView(
              children: [
                searchBar(),
                todoList(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
