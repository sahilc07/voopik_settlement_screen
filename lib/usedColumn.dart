import 'package:flutter/material.dart';
import 'itemTile.dart';
import 'priceTile.dart';
import 'button.dart';

class UsedColumn extends StatefulWidget {
  const UsedColumn({
    Key key,
  }) : super(key: key);

  @override
  _UsedColumnState createState() => _UsedColumnState();
}

class _UsedColumnState extends State<UsedColumn> {
  bool checked = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Text(
            'Used : Excellent',
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
            Icons.keyboard_arrow_up,
            size: 30.0,
          ),
        ),
        Divider(
          height: 10.0,
          color: Color(0xFF7D808B),
        ),
        PriceTile(
          label: 'Selling Price',
          price: '+ Rs 240',
          color: Color(0xFF00c782),
        ),
        PriceTile(
          label: 'Shipping Charge to the buyer',
          price: '+ Rs 50',
          color: Color(0xFF00c782),
        ),
        PriceTile(
          label: 'Commision',
          price: '- Rs 40',
          color: Color(0xFFB12704),
        ),
        PriceTile(
          label: 'Shipping Fee',
          price: '- Rs 10',
          color: Color(0xFFB12704),
        ),
        PriceTile(
          label: 'Fixed Fee',
          price: '- Rs 12',
          color: Color(0xFFB12704),
        ),
        PriceTile(
          label: 'Collection Fee',
          price: '- Rs 20',
          color: Color(0xFFB12704),
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
        CheckboxListTile(
          value: checked,
          onChanged: (bool value) {
            setState(() {
              checked = value;
            });
          },
          title: Align(
            child: Text(
              'Use the same details to sell this product',
              style: TextStyle(
                fontSize: 15.0,
                color: Color(0xFF2E353B),
              ),
            ),
            alignment: Alignment(-1.5, 0),
          ),
          controlAffinity: ListTileControlAffinity.leading,
          contentPadding: EdgeInsets.all(0.0),
          activeColor: Color(0xFF00C782),
        ),
        Button(
          label: 'SELL THIS PRODUCT',
          textColor: Colors.white,
          buttonColor: Color(0xFFFFA42E),
        ),
        SizedBox(
          height: 25.0,
        ),
        Button(
          label: 'GO BACK',
          textColor: Color(0xFFFFA42E),
          buttonColor: Colors.white,
        ),
        SizedBox(
          height: 25.0,
        ),
      ],
    );
  }
}
