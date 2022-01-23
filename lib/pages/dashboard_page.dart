import 'package:flutter/material.dart';
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
          onTap: () {},
          child: Image.asset('assets/button_add.png', width: 47, height: 47),
        )
      ]);
    }

    todoList() {
      return Column(
        children: const [
          TodoCard(),
          TodoCard(),
          TodoCard(),
          TodoCard(),
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Column(
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
    );
  }
}
