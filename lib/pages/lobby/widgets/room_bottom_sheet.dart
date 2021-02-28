import 'package:club_house/constants/style.dart';
import 'package:club_house/widgets/round_button.dart';
import 'package:club_house/widgets/round_image.dart';
import 'package:flutter/material.dart';

class RoomBottomSheet extends StatefulWidget {
  @override
  _RoomBottomSheetState createState() => _RoomBottomSheetState();
}

class _RoomBottomSheetState extends State<RoomBottomSheet> {
  var selectedButtonIndex = 0;
  var data = [
    {
      'image':
      'https://images.unsplash.com/photo-1518288774672-b94e808873ff?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=678&q=80',
      'text': 'Open',
      'selectedMessage': 'Start a room open to everyone',
    },
    {
      'image':
      'https://images.unsplash.com/photo-1518288774672-b94e808873ff?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=678&q=80',
      'text': 'Social',
      'selectedMessage': 'Start a room with people I follow',
    },
    {
      'image':
      'https://images.unsplash.com/photo-1518288774672-b94e808873ff?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=678&q=80',
      'text': 'Closed',
      'selectedMessage': 'Start a room for people I choose',
    },
  ];


  @override
  Widget build(BuildContext context) {
    return Container(
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
                color: Style.AccentGreen,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (var i = 0; i < 3; i++)
                InkWell(
                  borderRadius: BorderRadius.circular(15),
                  onTap: () {
                    setState(() {
                      selectedButtonIndex = i;
                    });
                  },
                  child: Ink(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                      color: i == selectedButtonIndex
                          ? Style.SelectedItemBorderGrey
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          color: i == selectedButtonIndex
                              ? Style.SelectedItemGrey
                              : Colors.transparent),
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: RoundImage(
                            width: 80,
                            height: 80,
                            borderRadius: 20,
                            url: data[i]['image'],
                          ),
                        ),
                        Text(
                          data[i]['text'],
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
          Divider(
            indent: 20,
            endIndent: 20,
            thickness: 1,
            height: 60,
          ),
          Text(
            data[selectedButtonIndex]['selectedMessage'],
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          RoundButton(
            color: Style.AccentGreen,
            onPressed: () {},
            text: '🎉 Let\'s go',
          ),
        ],
      ),
    );
  }
}
