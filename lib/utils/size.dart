import 'package:flutter/material.dart';

class SizeCompare {
  final Size size;
  double greater;
  double lower;

  SizeCompare({this.size}) {
    greater = size.height > size.width ? size.height : size.width;
    lower = size.height < size.width ? size.height : size.width;
  }
}
