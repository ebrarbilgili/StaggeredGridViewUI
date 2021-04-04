import 'dart:io';

import 'package:dio/dio.dart';
import 'package:staggered_grid_ui/base/grid_view_page/model/grid_view_model.dart';

class GridViewService {
  final Dio service;

  GridViewService({required this.service});

  Future<List<GridViewModel>> getData() async {
    final response =
        await service.get('?method=tara&name=ebrarbilgili&gender=0');

    if (response.statusCode == HttpStatus.ok) {
      final data = response.data;

      if (data is List) {
        return data.map((e) => GridViewModel.fromJson(e)).toList();
      }
    }
    return [];
  }
}
