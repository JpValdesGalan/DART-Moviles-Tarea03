import 'package:flutter/material.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          height: 50,
          width: 100,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromRGBO(211, 211, 211, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            onPressed: () => showDialog(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: Text('Pickup'),
                content: Text('Lista de Items'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: Text('OK'),
                  ),
                ],
              ),
            ),
            child: Text(
              "Pickup",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        VerticalDivider(
          thickness: 4,
          indent: 40,
          endIndent: 40,
          color: Color.fromRGBO(211, 211, 211, 1),
        ),
        SizedBox(
          height: 50,
          width: 100,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromRGBO(211, 211, 211, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            onPressed: () => showDialog(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: const Text('Delivery'),
                content: const Text('Lista de Items'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: const Text('OK'),
                  ),
                ],
              ),
            ),
            child: Text(
              "Delivery",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}
