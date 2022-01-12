import 'package:flutter/material.dart';
import 'package:gas_dealer_app/app/components/list_widget.dart';
import 'package:gas_dealer_app/app/components/row_widget.dart';

class BodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 20, top: 25),
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.14,
          child: RowWidget(),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.75,
          child: ListWidget(),
        ),
      ],
    );
  }
}
