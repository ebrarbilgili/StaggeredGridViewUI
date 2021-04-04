import 'package:flutter/material.dart';
import 'package:staggered_grid_ui/core/constant/color/color_constants.dart';

abstract class BaseStateful<T extends StatefulWidget> extends State<T> {
  ColorConstants colorConstants = ColorConstants.instance;

  ThemeData get theme => Theme.of(context);

  TextTheme get textTheme => Theme.of(context).textTheme;

  double dynamicHeight(double value) =>
      MediaQuery.of(context).size.height * value;
  double dynamicWidth(double value) =>
      MediaQuery.of(context).size.width * value;
}
