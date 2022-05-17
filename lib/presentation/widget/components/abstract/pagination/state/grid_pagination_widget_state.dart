import 'package:flutter/cupertino.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../interface/grid_pagination.dart';

abstract class GridPaginationWidgetState<W extends StatefulWidget, ItemType>
    extends State<W>
    implements GridPagination<ItemType> {
  late PagingController<int, ItemType> _pagingController;

  @override
  void initState() {
    _pagingController =
        PagingController(firstPageKey: 1, invisibleItemsThreshold: 4);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16,),
        Expanded(child:
        PagedGridView(pagingController: _pagingController,
          builderDelegate: PagedChildBuilderDelegate<ItemType>(
            itemBuilder: buildItem,
            animateTransitions: true,
            firstPageErrorIndicatorBuilder: (context) =>
                buildFirstPageError(context, _pagingController.error),
            firstPageProgressIndicatorBuilder: buildFirstPageProgress,

          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: spanCount, childAspectRatio: aspectRatio,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
        )
        ),
      ],
    );
  }
}
