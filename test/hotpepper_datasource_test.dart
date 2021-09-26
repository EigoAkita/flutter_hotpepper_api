import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:practice_riverpod/core/domain/entity/hotpepper.dart';
import 'package:practice_riverpod/core/gateway/datasource/hotpepper_datasource.dart';
import 'package:practice_riverpod/core/gateway/hotpepper_impl/hotpepper_repository_impl.dart';
import 'package:practice_riverpod/hotpepper_list_page.dart';
import 'package:practice_riverpod/modules/hotpepper_list/controller/hotpepper_list_controller.dart';
import 'package:practice_riverpod/modules/hotpepper_list/controller/hotpepper_list_controller_provider.dart';
import 'package:practice_riverpod/modules/hotpepper_list/controller/hotpepper_list_state.dart';
import 'package:practice_riverpod/modules/hotpepper_list/widget/hotpepper_shimmer_widget.dart';

import 'hotpepper_datasource_test.mocks.dart';

@GenerateMocks([HotPepperDatasource])
void main() {
  var hotpepperDatasource = MockHotPepperDatasource();
  final textController = TextEditingController();
  final controller = useProvider(hotPepperListControllerProvider.notifier);

  // test(
  //   'テストケース名',
  //   () {
  //     TODO:実際のテスト処理
  //     expect('結果', '期待する値');
  //   },
  // );

  //ユニットテスト
  //モック化したhotpepperDatasourceをDIしている。

  //TODO:Unit Test

  // test(
  //   '任意のデータが返ってきたと想定した時にちゃんとデータが読み込まれているか',
  //   () async {
  //     final container = ProviderContainer(
  //       overrides: [
  //         hotPepperListControllerProvider.overrideWithProvider(
  //           StateNotifierProvider<HotPepperListController, HotPepperListState>(
  //             (ref) => HotPepperListController(
  //               HotPepperRepositoryImpl(hotpepperDatasource),
  //             ),
  //           ),
  //         )
  //       ],
  //     );

  //     //ここではhotpepperDatasource.fetchRepositories())を実行したら
  //     //[HotPepper(name: 'name')]が返ってくると想定している。
  //     when(hotpepperDatasource.fetchRepositories()).thenAnswer(
  //       (_) async => [
  //         HotPepper(name: '焼肉'),
  //       ],
  //     );

  //     //オーバーライドしたプロバイダーを実行させている
  //     final model = container.read(hotPepperListControllerProvider.notifier);
  //     await model.load(searchText: '焼肉');

  //     //オーバーライドしたプロパイダーを実行させた時に返ってきた値を監視している。
  //     final data = container.listen(
  //       hotPepperListControllerProvider.select((value) => value.data),
  //     );

  //     expect(data.read()[0].name, '焼肉');
  //   },
  // );

  //pumpWidget = 対象の Widget のインスタンスを生成 & その生成処理が問題なく完了することをチェック

  //pump = Widget の再生成を促すメソッド。通常UI操作により描画対象に変更が加わった際には自動的に Widget が再生成
  //ユーザの操作に合わせて Widget の再生成が行われる

  //find = find() は flutter_test パッケージが提供するトップレベルの関数で、
  //文字やアイコンなどを元に該当する Widget を特定する Finder として機能します
  //find.text('0') というのが Finder で、0 の文字列を含む Widget を
  //Widget ツリーの中から探索します。今回は画面中央に表示されるカウンターがヒットします

  //tester.pump() = Widgetの再生成が行われないことを示している。

  //expect() = Widgetが期待通りに生成されているか否かを検証

  //ウィジェットテスト 任意のデータが返ってきた時にちゃんと表示されているか確認する為のテスト

  testWidgets(
    'Widget Test',
    (tester) async {
      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            hotPepperListControllerProvider.overrideWithProvider(
              StateNotifierProvider<HotPepperListController,
                  HotPepperListState>(
                (ref) => HotPepperListController(
                  HotPepperRepositoryImpl(hotpepperDatasource),
                ),
              ),
            ),
          ],
          child: HotPepperListPage(),
        ),
      );

      await tester.enterText(
        find.byWidget(
          TextField(
            onChanged: (text) {
              controller.load(searchText: textController.text = text);
            },
          ),
        ),
        '焼肉',
      );

      when(hotpepperDatasource.fetchRepositories(
              searchText: textController.text))
          .thenAnswer(
        (_) async => [
          HotPepper(name: '焼肉'),
        ],
      );

      expect(find.text('焼肉'), findsOneWidget);
      // when(hotpepperDatasource.fetchRepositories())
      //     .thenAnswer((_) async => [HotPepper(name: '焼肉')]);

      // expect(find.byType(HotPepperShimmer), findsOneWidget);

      // await tester.pump();

      // expect(find.byType(HotPepperShimmer), findsNothing);

      // expect(find.text('焼肉'), findsOneWidget);
    },
  );
}
