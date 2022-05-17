import 'package:flutter/material.dart';
import 'package:flutter_pagination_list/domain/model/notification_model.dart';
import 'package:flutter_pagination_list/presentation/widget/components/abstract/pagination/pagination_widget.dart';

import '../widget/components/abstract/pagination/state/grid_pagination_widget_state.dart';
import '../widget/notification/notification_list_item.dart';

class NotificationPage extends PaginationWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _NotificationPaginationState();
}

class _NotificationPaginationState
    extends GridPaginationWidgetState<NotificationPage, NotificationModel> {
  @override
// TODO: implement aspectRatio
  double get aspectRatio => 1;

  @override
  Widget buildFirstPageError(BuildContext context, error) {
    return Center(child: Text(error));
  }

  @override
  Widget buildFirstPageProgress(BuildContext context) =>
      const SizedBox(width: 24, height: 24, child: CircularProgressIndicator());

  @override
  Widget buildItem(BuildContext context, item, int index) =>
      NotificationListItem(
        item: item,
      );

   @override
  Widget buildTitle(BuildContext context) => const Text("Notification");

  @override
  void refresh() {
// TODO: implement refresh
  }

  @override
  int get spanCount => 2;

  @override
  Widget buildNoMoreItemsFound(BuildContext context) =>
      const Text("Empty Result");
}
