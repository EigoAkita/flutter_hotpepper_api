import 'dart:convert';

import 'package:practice_riverpod/core/domain/entity/hotpepper.dart';
import 'package:practice_riverpod/core/gateway/datasource/hotpepper_datasource.dart';
import 'package:http/http.dart' as http;

class HotPepperDatasourceImpl extends HotPepperDatasource {
  @override
  Future<List<HotPepper>> fetchRepositories() async {
    final String searchText = 'ごはん';
    final String apiKey = 'e645b0fbb96efd63';
    final url = Uri.parse(
        'https://webservice.recruit.co.jp/hotpepper/gourmet/v1/?key=$apiKey&name_any=$searchText&format=json');
    final result = await http.get(url);
    print(result.body);
    if (result.statusCode == 200) {
      final List<dynamic> jsonArray = json.decode(result.body);
      final hotPepperList =
          jsonArray.map((json) => HotPepper.fromJson(json)).toList();
      return hotPepperList;
    } else {
      return Future.error(Exception());
    }
  }
}
