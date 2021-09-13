import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:practice_riverpod/modules/hotpepper_list/controller/hotpepper_list_controller_provider.dart';
import 'package:practice_riverpod/modules/hotpepper_list/widget/hotpepper_list_item_widget.dart';

class HotPepperListPage extends HookWidget {
  @override
  Widget build(context) {
    final controller = useProvider(hotPepperListControllerProvider.notifier);
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
                  FutureBuilder(
                    future: controller.load(searchText: text),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return _buildList();
                      } else {
                        return Center(
                          child: const CircularProgressIndicator(),
                        );
                      }
                    },
                  );
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
              child: _buildList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildList() {
    return HookBuilder(
      builder: (context) {
        final data = useProvider(
            hotPepperListControllerProvider.select((value) => value.data));
        return ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return HotPepperListItemWidget(data[index]);
          },
        );
      },
    );
  }
}
