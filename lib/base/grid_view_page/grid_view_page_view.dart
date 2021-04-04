import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import './grid_view_page_view_model.dart';

class GridViewPageView extends GridViewPageViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar,
      body: StaggeredGridView.countBuilder(
        crossAxisCount: 4,
        itemCount: listData.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            elevation: 8,
            child: Column(
              children: [
                buildImage(index),
                Expanded(
                    child: Text(
                  listData[index].name ?? '',
                  style: textTheme.bodyText2!.copyWith(fontSize: 18),
                )),
                Row(
                  children: [
                    Expanded(flex: 2, child: Text('Followers: ')),
                    Expanded(
                        flex: 3, child: Text(listData[index].followers ?? '')),
                  ],
                ),
                Row(
                  children: [
                    Expanded(flex: 2, child: Text('Follows: ')),
                    Expanded(
                        flex: 3, child: Text(listData[index].follows ?? '')),
                  ],
                ),
              ],
            ),
          );
        },
        staggeredTileBuilder: (int index) =>
            StaggeredTile.count(2, index.isEven ? 2.5 : 2.8),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
      ),
    );
  }

  Expanded buildImage(int index) {
    return Expanded(
      flex: 8,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12), topRight: Radius.circular(12)),
        child: Image.network(
          listData[index].photo ?? 'https://picsum.photos/200/300',
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) => ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12), topRight: Radius.circular(12)),
              child: Image.network(
                'https://picsum.photos/200',
                fit: BoxFit.cover,
              )),
        ),
      ),
    );
  }

  AppBar get buildAppBar => AppBar(
        title: Text(
          title,
          style: textTheme.headline6!.copyWith(color: theme.accentColor),
        ),
      );
}
