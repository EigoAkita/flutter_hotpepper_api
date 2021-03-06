import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:practice_riverpod/modules/hotpepper_list/controller/hotpepper_list_controller_provider.dart';
import 'package:practice_riverpod/modules/hotpepper_list/widget/hotpepper_list_item_widget.dart';
import 'package:practice_riverpod/modules/hotpepper_list/widget/hotpepper_shimmer_widget.dart';

class HotPepperListPage extends HookWidget {
  @override
  Widget build(context) {
    final controller = useProvider(hotPepperListControllerProvider.notifier);
    final textController = TextEditingController();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text(
            'HOT PEPPER API',
          ),
        ),
        body: Column(
          children: <Widget>[
            SizedBox(
              child: TextField(
                onChanged: (text) {
                  controller.load(searchText: textController.text = text);
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
                  hintText: 'お店 ジャンルなど...',
                ),
              ),
            ),
            Expanded(
              child: FutureBuilder(
                future: controller.load(searchText: textController.text),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return _buildList();
                  }
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return HotPepperShimmer();
                  } else {
                    return HotPepperShimmer();
                  }
                },
              ),
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
