import 'package:flutter/material.dart';

class MenuItem {
  final String name;
  bool isChecked;

  MenuItem(this.name, {this.isChecked = false});
}

class ListCustom extends StatefulWidget {
  const ListCustom({super.key});

  @override
  State<ListCustom> createState() => _ListCustomState();
}

class _ListCustomState extends State<ListCustom> {
  final List<MenuItem> menuItems = <MenuItem>[
    MenuItem('Burguer'),
    MenuItem('Hot Dog'),
    MenuItem('Fries'),
    MenuItem('Soda'),
    MenuItem('Ice Cream'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: menuItems.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              menuItems[index].isChecked = !menuItems[index].isChecked;
            });
          },
          child: Container(
            margin: EdgeInsets.only(top: 5, bottom: 5),
            padding: EdgeInsets.only(top: 5, bottom: 5),
            color: menuItems[index].isChecked
                ? Color.fromRGBO(211, 211, 211, 1)
                : Colors.transparent,
            child: ListTile(
              leading: Image.asset(
                "assets/images/${menuItems[index].name}.png",
                height: 40,
                width: 40,
              ),
              title: Text("${menuItems[index].name}"),
              selectedColor: Colors.grey,
            ),
          ),
        );
      },
    );
  }
}
