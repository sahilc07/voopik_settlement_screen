import 'package:flutter/material.dart';
import 'itemTile.dart';

class NewColumn extends StatelessWidget {
  const NewColumn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Text(
            'New Book',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
              color: Color(0xFF2E353B),
            ),
          ),
        ),
        ItemTiles(
          label: '-Local Delivery',
          price: 'Rs 218',
          arrow: Icon(
            Icons.keyboard_arrow_down,
            size: 30.0,
          ),
        ),
        Divider(
          height: 10.0,
          color: Color(0xFF7D808B),
        ),
        ItemTiles(
          label: '-Zonal Delivery',
          price: 'Rs 238',
          arrow: Icon(
            Icons.keyboard_arrow_down,
            size: 30.0,
          ),
        ),
        Divider(
          height: 10.0,
          color: Color(0xFF7D808B),
        ),
        ItemTiles(
          label: '-National Delivery',
          price: 'Rs 260',
          arrow: Icon(
            Icons.keyboard_arrow_down,
            size: 30.0,
          ),
        ),
      ],
    );
  }
}
