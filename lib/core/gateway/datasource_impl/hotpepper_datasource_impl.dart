import 'dart:convert';

import 'package:practice_riverpod/core/domain/entity/hotpepper.dart';
import 'package:practice_riverpod/core/gateway/datasource/hotpepper_datasource.dart';
import 'package:http/http.dart' as http;

class HotPepperDatasourceImpl extends HotPepperDatasource {
  @override
  Future<List<HotPepper>> fetchRepositories(
      {required String searchText}) async {
    final String apiKey = 'e645b0fbb96efd63';
    final url = Uri.parse(
      'https://webservice.recruit.co.jp/hotpepper/gourmet/v1/?key=$apiKey&name_any=$searchText&range=5&order=4&format=json',
    );
    final result = await http.get(url);
    print(result.body);
    if (result.statusCode == 200) {
      var list = json.decode(result.body)['results']['shop'] as List;
      List<HotPepper> shopDataList =
          list.map((e) => HotPepper.fromjson(e)).toList();

      return shopDataList;
    } else {
      return Future.error(Exception());
    }
  }
}
