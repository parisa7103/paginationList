
import 'package:flutter/material.dart';

abstract class CustomList<ItemType>{
  Widget buildTitle(BuildContext context);
  Widget buildItem(BuildContext context, ItemType item, int index);
}