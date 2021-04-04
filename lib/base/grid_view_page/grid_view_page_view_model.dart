import 'package:dio/dio.dart';
import 'package:staggered_grid_ui/base/grid_view_page/model/grid_view_model.dart';
import 'package:staggered_grid_ui/base/grid_view_page/service/grid_view_service.dart';
import 'package:staggered_grid_ui/core/states/base_stateful.dart';
import './grid_view_page.dart';

part 'string_values.dart';

abstract class GridViewPageViewModel extends BaseStateful<GridViewPage>
    with _StringValue {
  GridViewService? gridViewService;

  @override
  void initState() {
    super.initState();
    gridViewService = GridViewService(
      service: Dio(
        BaseOptions(baseUrl: 'http://localhost:3000'),
      ),
    );
    getData();
  }

  List<GridViewModel> listData = [];

  Future<void> getData() async {
    if (gridViewService != null) {
      listData = await gridViewService!.getData();
    }
    setState(() {});
  }
}
