import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Botijões de 13kg em:',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 11,
                ),
              ),
              Text(
                'Av. Paulista, 1001',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.5,
                ),
              ),
              Text(
                'Paulista, São Paulo, SP',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Container(
                child: Icon(
                  Icons.fmd_good,
                  size: 35,
                  color: Colors.blue,
                ),
              ),
              Text(
                'Mudar',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
