import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:gas_dealer_app/app/models/data_model.dart';

class DataRepository {
  Future<List<DataModel>> fetchData() async {
    String jsonString = await rootBundle.loadString('jsons/dados.json');
    List _list = jsonDecode(jsonString);
    return _list.map((json) => DataModel.fromJson(json)).toList();
  }
}
