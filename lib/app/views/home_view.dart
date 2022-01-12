import 'package:flutter/material.dart';
import 'package:gas_dealer_app/app/components/body_widget.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Escolha uma Revenda'),
        actions: [
          PopupMenuButton(
            iconSize: 30,
            icon: Icon(Icons.swap_vert),
            itemBuilder: (context) => [
              PopupMenuItem(
                child: CheckboxListTile(
                  title: Text(
                    'Melhor Avaliação',
                    style: TextStyle(color: Colors.blue),
                  ),
                  value: false,
                  onChanged: (value) {},
                ),
              ),
              PopupMenuItem(
                child: CheckboxListTile(
                  title: Text(
                    'Mais Rápido',
                    style: TextStyle(color: Colors.blue),
                  ),
                  value: true,
                  onChanged: (value) {},
                ),
              ),
              PopupMenuItem(
                child: CheckboxListTile(
                  title: Text(
                    'Mais Barato',
                    style: TextStyle(color: Colors.blue),
                  ),
                  value: false,
                  onChanged: (value) {},
                ),
              ),
            ],
          ),
          PopupMenuButton(
            iconSize: 30,
            icon: Icon(Icons.help_rounded),
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text(
                  'Suporte',
                  style: TextStyle(color: Colors.blue),
                ),
                value: 0,
              ),
              PopupMenuItem(
                child: Text(
                  'Termo de Serviço',
                  style: TextStyle(color: Colors.blue),
                ),
                value: 1,
              ),
            ],
          ),
        ],
      ),
      body: BodyWidget(),
    );
  }
}
