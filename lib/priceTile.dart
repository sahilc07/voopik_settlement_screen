import 'package:flutter/material.dart';

class PriceTile extends StatelessWidget {
  final String label;
  final String price;
  final Color color;

  PriceTile({this.label, this.price, this.color});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: EdgeInsets.all(0.0),
      leading: Text(
        label,
        style: TextStyle(
          fontSize: 15.0,
          color: Color(0xFF3E4254),
        ),
      ),
      trailing: Text(
        price,
        style: TextStyle(
          fontSize: 15.0,
          color: color,
        ),
      ),
    );
  }
}
