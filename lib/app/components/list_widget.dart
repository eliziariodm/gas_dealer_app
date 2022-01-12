import 'package:flutter/material.dart';
import 'package:gas_dealer_app/app/controllers/data_controller.dart';

class ListWidget extends StatefulWidget {
  @override
  _ListWidgetState createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  DataController _dataController = DataController();
  late Future<dynamic> _listData;

  @override
  void initState() {
    super.initState();
    _listData = _dataController.data();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _listData,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          dynamic loadData = snapshot.data;

          return ListView.builder(
            itemCount: loadData.length,
            itemBuilder: (context, index) {
              return Container(
                height: MediaQuery.of(context).size.height * 0.18,
                margin: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.09,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color(
                          int.parse('FF${loadData[index].cor}', radix: 16),
                        ),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(7),
                            bottomLeft: Radius.circular(7)),
                      ),
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: Text(
                          loadData[index].tipo,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 10, top: 7),
                          width: MediaQuery.of(context).size.width * 0.837,
                          height: MediaQuery.of(context).size.height * 0.06,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                loadData[index].nome,
                                style: TextStyle(fontSize: 14),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(7),
                                      bottomLeft: Radius.circular(7)),
                                ),
                                child: Visibility(
                                  visible: loadData[index].melhorPreco,
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.05,
                                    width: MediaQuery.of(context).size.width *
                                        0.27,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.label,
                                          color: Colors.white,
                                          size: 28,
                                        ),
                                        Text(
                                          'Melhor Preço',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 11),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 20),
                          width: MediaQuery.of(context).size.width * 0.837,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.only(right: 20, bottom: 5),
                                child: Text(
                                  'Nota',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.only(right: 20, bottom: 5),
                                child: Text(
                                  'Tempo Médio',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.only(right: 20, bottom: 5),
                                child: Text(
                                  'Preço',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.837,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    loadData[index].nota.toString(),
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow[600],
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    loadData[index].tempoMedio,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      'min',
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.grey),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'R\$ ${loadData[index].preco.toStringAsFixed(2).replaceAll('.', ',')}',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              );
            },
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text('erro'),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.blue,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white70),
            ),
          );
        }
      },
    );
  }
}
