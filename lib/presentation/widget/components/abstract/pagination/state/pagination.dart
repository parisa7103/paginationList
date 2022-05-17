import 'package:flutter/material.dart';
import 'package:flutter_pagination_list/presentation/widget/components/abstract/list/custom_list.dart';

abstract class Pagination<ItemType> implements CustomList<ItemType>{
  Widget buildFirstPageProgress(BuildContext context);

  Widget buildFirstPageError(BuildContext context, error);

  Widget buildNoMoreItemsFound(BuildContext context);

  void refresh();
}