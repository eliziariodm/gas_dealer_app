import 'package:gas_dealer_app/app/models/data_model.dart';
import 'package:gas_dealer_app/app/repositories/data_repository.dart';

class DataController {
  List<DataModel> listDataModel = [];

  DataRepository _dataRepository = DataRepository();

  Future data() async {
    return listDataModel = await _dataRepository.fetchData();
  }
}
