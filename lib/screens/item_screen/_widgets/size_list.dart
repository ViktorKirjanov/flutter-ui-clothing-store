import 'package:clothing_store/screens/item_screen/_widgets/size_box.dart';
import 'package:clothing_store/utils/app_theme.dart';
import 'package:flutter/material.dart';

class SizeList extends StatefulWidget {
  @override
  _SizeListState createState() => _SizeListState();
}

class _SizeListState extends State<SizeList> {
  var _list = ['XS', 'S', 'M', 'L', 'XL'];
  var _selected = 2;

  @override
  Widget build(BuildContext context) {
    List<Widget> _items = [];
    for (var i = 0; i < _list.length; i++) {
      _items.add(
        GestureDetector(
          child: SizeBox(
            text: _list[i],
            active: _selected == i,
          ),
          onTap: () {
            print(i);
            setState(() {
              _selected = i;
            });
          },
        ),
      );
      if (i != _list.length - 1) {
        _items.add(SizedBox(width: 10));
      }
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Shoose Size',
          style: TextStyle(
            color: AppTheme.silver,
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 8.0),
        Row(children: _items),
      ],
    );
  }
}
