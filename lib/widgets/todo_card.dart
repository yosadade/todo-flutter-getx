import 'package:flutter/material.dart';
import 'package:todo/theme.dart';

class TodoCard extends StatelessWidget {
  const TodoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: backgroundColor2, borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Text(
            "name",
            style: primaryTextStyle.copyWith(
                fontSize: 14,
                fontWeight: light,
                color: const Color(0xffFFFFFF)),
            maxLines: 1,
          ),
          const SizedBox(height: 12),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                    child: ClipRRect(
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    width: 70,
                    decoration: BoxDecoration(
                        color: backgroundColor1,
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(children: [
                      Center(
                        child: Image.asset('assets/icon_edit.png',
                            width: 10, height: 10),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text("Edit",
                          style: primaryTextStyle.copyWith(
                              fontSize: 10, color: textColor4))
                    ]),
                  ),
                )),
                const SizedBox(
                  width: 8,
                ),
                GestureDetector(
                    child: ClipRRect(
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    width: 70,
                    decoration: BoxDecoration(
                        color: backgroundColor1,
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(children: [
                      Center(
                        child: Image.asset('assets/icon_trash.png',
                            width: 10, height: 10),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text("Remove",
                          style: primaryTextStyle.copyWith(
                              fontSize: 10, color: textColor3))
                    ]),
                  ),
                )),
              ],
            ),
          ])
        ],
      ),
    );
  }
}
