import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:practice_riverpod/core/gateway/datasource_impl/hotpepper_datasource_impl.dart';

final hotPepperDatasourceProvider =
    Provider((ref) => HotPepperDatasourceImpl());
