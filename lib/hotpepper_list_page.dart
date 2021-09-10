import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HotPepperListPage extends HookWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text(
            'HotpepperグルメAPI',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          children: <Widget>[
            SizedBox(
              child: TextField(
                onChanged: (text) {
                  // onChangedは入力されている文字が変更するたびに呼ばれます
                  //  model.text = text;
                  //  model.search();
                },
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 20,
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  hintText: "名前で調べる...",
                ),
              ),
            ),
            Expanded(
              child: FutureBuilder(
                builder: (context, AsyncSnapshot snapshot) {
                  return Container(
                    color: Colors.amber,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget _buildList() {
  //   return HookBuilder(
  //     builder: (context) {
  //       final data = useProvider(
  //           articleListControllerProvider.select((value) => value.data));
  //       return ListView.builder(
  //         itemCount: data.length,
  //         itemBuilder: (context, index) {
  //           return ArticleListItemWidget(data[index]);
  //         },
  //       );
  //     },
  //   );
  // }
}
