import 'package:flutter/material.dart';

class ItemTiles extends StatelessWidget {
  final String label;
  final String price;
  final Icon arrow;

  ItemTiles({this.label, this.price, this.arrow});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        contentPadding: EdgeInsets.all(0.0),
        leading: Text(
          label,
          style: TextStyle(
            fontSize: 15.0,
            color: Color(0xFF3E4254),
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: FittedBox(
          child: Row(
            children: [
              Text(
                price,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Color(0xFFFFA42E),
                  fontWeight: FontWeight.w500,
                ),
              ),
              IconButton(
                icon: arrow,
                onPressed: null,
              )
            ],
          ),
        ));
  }
}
