import 'package:flutter/material.dart';
import 'package:staggered_grid_ui/base/grid_view_page/grid_view_page.dart';
import 'package:staggered_grid_ui/core/constant/theme/theme_constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeConstant.instance.themeData,
      home: GridViewPage(),
    );
  }
}
