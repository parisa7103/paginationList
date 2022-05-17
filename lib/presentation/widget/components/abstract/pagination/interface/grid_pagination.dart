import 'package:flutter/cupertino.dart';
import 'package:flutter_pagination_list/presentation/widget/components/abstract/list/custom_list.dart';
import 'package:flutter_pagination_list/presentation/widget/components/abstract/pagination/state/pagination.dart';

abstract class GridPagination<ItemType> extends Pagination<ItemType>{
  int get spanCount;

  double get aspectRatio;

}