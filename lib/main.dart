import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

final configProvider = FutureProvider<Map<String, Object?>>((ref) async {
  final jsonString = await rootBundle.loadString('json/config.json');
  final content = json.decode(jsonString) as Map<String, Object?>;
  return content;
});

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    // FutureProviderを読み取る（取得できる型は `AsyncValue<T>`）
    final config = watch(configProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('FutureProviderPage'),
      ),
      // AsyncValue は `.when` を使ってハンドリングする
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            config.when(
              // 非同期処理中は `loading` で指定したWidgetが表示される
              loading: () {
                return const CircularProgressIndicator();
              },
              // loading: () => const CircularProgressIndicator(),
              // エラーが発生した場合に表示されるWidgetを指定
              error: (error, stack) => Text('Error: $error'),
              // 非同期処理が完了すると、取得した `config` が `data` で使用できる
              data: (config) {
                return Text('${config['appName']}');
              },
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('StreamProvider'),
            ),
          ],
        ),
      ),
    );
  }
}
