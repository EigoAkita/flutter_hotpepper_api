import 'package:flutter/material.dart';
import 'package:practice_riverpod/modules/hotpepper_list/model/hotpepper_list_model.dart';
import 'package:practice_riverpod/modules/hotpepper_list/widget/hotpepper_web_view.dart';

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
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 44,
                minHeight: 44,
                maxWidth: 64,
                maxHeight: 64,
              ),
              child: Image.network(
                '${_model.logoImage}',
                fit: BoxFit.cover,
              ),
            ),
            title: Text('${_model.name}'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    print('${_model.urls}');
                    return HotPepperWebView(
                      linkUrl: '${_model.urls}',
                    );
                  },
                ),
              );
            },
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
