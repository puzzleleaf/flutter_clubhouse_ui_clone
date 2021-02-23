import 'package:club_house/constants/util.dart';
import 'package:club_house/widgets/round_button.dart';
import 'package:club_house/widgets/round_image.dart';
import 'package:flutter/material.dart';

class RoomBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        padding: const EdgeInsets.only(
          top: 10,
          right: 20,
          left: 20,
          bottom: 20,
        ),
        child: Column(
          children: [
            Container(
              width: 40,
              height: 5,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              alignment: Alignment.centerRight,
              child: Text(
                '+ Add a Topic',
                style: TextStyle(
                  color: Util.AccentGreen,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  borderRadius: BorderRadius.circular(15),
                  onTap: () {
                    //set the toggle logic
                    // setState(() {
                    //   for (int indexBtn = 0;
                    //       indexBtn < isSelected.length;
                    //       indexBtn++) {
                    //     if (indexBtn == index) {
                    //       isSelected[indexBtn] = true;
                    //     } else {
                    //       isSelected[indexBtn] = false;
                    //     }
                    //   }
                    // });
                  },
                  child: Ink(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: false ? Color(0xffD6EAF8) : Colors.transparent,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: false ? Colors.grey : Colors.transparent),
                    ),
                    child: Column(
                      children: [
                        Container(
                          child: RoundImage(
                            width: 80,
                            height: 80,
                            borderRadius: 20,
                            url:
                                "https://images.unsplash.com/photo-1518288774672-b94e808873ff?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=678&q=80",
                          ),
                        ),
                        Text('Open'),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(15),
                  onTap: () {
                    //set the toggle logic
                    // setState(() {
                    //   for (int indexBtn = 0;
                    //       indexBtn < isSelected.length;
                    //       indexBtn++) {
                    //     if (indexBtn == index) {
                    //       isSelected[indexBtn] = true;
                    //     } else {
                    //       isSelected[indexBtn] = false;
                    //     }
                    //   }
                    // });
                  },
                  child: Ink(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: false ? Color(0xffD6EAF8) : Colors.transparent,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: false ? Colors.grey : Colors.transparent),
                    ),
                    child: Column(
                      children: [
                        Container(
                          child: RoundImage(
                            width: 80,
                            height: 80,
                            borderRadius: 20,
                            url:
                                "https://images.unsplash.com/photo-1518288774672-b94e808873ff?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=678&q=80",
                          ),
                        ),
                        Text('Open'),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(15),
                  onTap: () {
                    //set the toggle logic
                    // setState(() {
                    //   for (int indexBtn = 0;
                    //       indexBtn < isSelected.length;
                    //       indexBtn++) {
                    //     if (indexBtn == index) {
                    //       isSelected[indexBtn] = true;
                    //     } else {
                    //       isSelected[indexBtn] = false;
                    //     }
                    //   }
                    // });
                  },
                  child: Ink(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: true ? Color(0xffD6EAF8) : Colors.transparent,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: true ? Colors.grey : Colors.transparent),
                    ),
                    child: Column(
                      children: [
                        Container(
                          child: RoundImage(
                            width: 80,
                            height: 80,
                            borderRadius: 20,
                            url:
                                "https://images.unsplash.com/photo-1518288774672-b94e808873ff?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=678&q=80",
                          ),
                        ),
                        Text('Open'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Divider(
                indent: 60,
                endIndent: 60,
                thickness: 1,
                height: 20,
              ),
            ),
            Expanded(
              child: Text(
                'Start a room open to everyone',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            RoundButton(
              color: Util.AccentGreen,
              onPressed: () {},
              text: 'Let\'s go',
            ),
          ],
        ));
  }
}
