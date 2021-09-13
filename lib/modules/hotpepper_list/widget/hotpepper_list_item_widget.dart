import 'package:flutter/material.dart';
import 'package:practice_riverpod/modules/hotpepper_list/model/hotpepper_list_model.dart';

class HotPepperListItemWidget extends StatelessWidget {
  final HotPepperListModel _model;
  const HotPepperListItemWidget(HotPepperListModel model)
      : _model = model,
        super();
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Text('${_model.lat}'),
          Text('${_model.lng}'),
          Text('${_model.urls}'),
          Text('${_model.name}'),
          // Text('${_model.logoImage}'),
        ],
      ),
    );
    // return Card(
    //   child: ListTile(
    //     title: Text('${_model.articleTitle}'),
    //     trailing: Column(children: [
    //       Icon(
    //         Icons.favorite,
    //         color: Colors.pinkAccent,
    //       ),
    //       Text('${_model.likedCount}'),
    //     ]),
    //     onTap: () {
    //       Navigator.push(context, MaterialPageRoute(builder: (context) {
    //         print(
    //             'https://zenn.dev/${_model.username}/articles/${_model.slug}');
    //         return ArticleWebView(
    //           linkUrl:
    //               'https://zenn.dev/${_model.username}/articles/${_model.slug}',
    //         );
    //       }));
    //     },
    //   ),
    // );
  }
}
