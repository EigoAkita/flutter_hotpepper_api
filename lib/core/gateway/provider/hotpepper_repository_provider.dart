import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:practice_riverpod/core/gateway/hotpepper_impl/hotpepper_repository_impl.dart';
import 'package:practice_riverpod/core/gateway/provider/hotpepper_datasource_provider.dart';

//HotPepperRepositoryクラスにHotPepperDatasourceクラスをDIしている箇所
final hotPepperRepositoryProvider = Provider(
    (ref) => HotPepperRepositoryImpl(ref.read(hotPepperDatasourceProvider)));
