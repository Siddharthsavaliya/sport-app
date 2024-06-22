import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class QuantityGetter extends StatefulWidget {
  final Function(int) onSubmit;
  final int totalQuantity;
  const QuantityGetter(
      {super.key, required this.onSubmit, required this.totalQuantity});

  @override
  _QuantityGetterState createState() => _QuantityGetterState();
}

class _QuantityGetterState extends State<QuantityGetter> {
  int _quantity = 1;

  void _incrementQuantity() {
    setState(() {
      _quantity++;
    });
    widget.onSubmit(_quantity);
  }

  void _decrementQuantity() {
    setState(() {
      if (_quantity > 1) {
        _quantity--;
      }
    });
    widget.onSubmit(_quantity);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.white,
              onPressed: _decrementQuantity,
              child: Icon(
                Icons.remove,
                color: _quantity > 1 ? black : Colors.grey,
              ),
            ),
            Text(
              '$_quantity',
              style: const TextStyle(fontSize: 20.0),
            ),
            FloatingActionButton(
              backgroundColor: Colors.white,
              onPressed:
                  _quantity < widget.totalQuantity ? _incrementQuantity : () {},
              child: Icon(
                Icons.add,
                color: _quantity < widget.totalQuantity ? black : Colors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
