import 'package:flutter/material.dart';
import 'package:flutter_pagination_list/domain/model/notification_model.dart';

class NotificationListItem extends StatelessWidget {
  const NotificationListItem({Key? key, required this.item}) : super(key: key);
  final NotificationModel item;

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Image.network(item.image),
          const SizedBox(
            width: 16,
          ),
          Text(item.message),
        ],
      );
}
